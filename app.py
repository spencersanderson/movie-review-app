from flask import Flask, render_template, request, redirect, url_for, session, flash
from flask_mysqldb import MySQL
import MySQLdb.cursors
import re

app = Flask(__name__)
app.secret_key = 'your_secret_key'  # Replace with a strong secret key

# MySQL configuration
app.config['MYSQL_HOST'] = 'movie-db.cbykq4u6in67.us-east-2.rds.amazonaws.com'
app.config['MYSQL_USER'] = 'admin'
app.config['MYSQL_PASSWORD'] = 'Wilsonss!32435'
app.config['MYSQL_DB'] = 'movie_reviews'

mysql = MySQL(app)

# Home page - movie list
@app.route('/')
def home():
    cur = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
    cur.execute("SELECT id, title, genre, year, director FROM movies")
    movies = cur.fetchall()
    cur.close()
    return render_template('index.html', movies=movies)

# Signup
@app.route('/signup', methods=['GET', 'POST'])
def signup():
    if request.method == 'POST':
        username = request.form['username']
        password = request.form['password']

        cur = mysql.connection.cursor()
        cur.execute('SELECT * FROM users WHERE username = %s', (username,))
        account = cur.fetchone()

        if account:
            flash('Username already exists!')
        elif not re.match(r'^[A-Za-z0-9_]+$', username):
            flash('Username must contain only letters, numbers, and underscores!')
        else:
            cur.execute('INSERT INTO users (username, password) VALUES (%s, %s)', (username, password))
            mysql.connection.commit()
            flash('You have successfully registered!')
            return redirect(url_for('login'))

        cur.close()

    return render_template('signup.html')

# Login
@app.route('/login', methods=['GET', 'POST'])
def login():
    if request.method == 'POST':
        username = request.form['username']
        password = request.form['password']

        cur = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
        cur.execute('SELECT * FROM users WHERE username = %s AND password = %s', (username, password))
        account = cur.fetchone()
        cur.close()

        if account:
            session['loggedin'] = True
            session['id'] = account['id']
            session['username'] = account['username']
            flash('Logged in successfully!')
            return redirect(url_for('home'))
        else:
            flash('Incorrect username or password!')

    return render_template('login.html')

# Logout
@app.route('/logout')
def logout():
    session.clear()
    flash('You have been logged out.')
    return redirect(url_for('login'))

# Movie detail and review submission
@app.route('/movies/<int:id>', methods=['GET', 'POST'])
def movie_detail(id):
    cur = mysql.connection.cursor(MySQLdb.cursors.DictCursor)

    if request.method == 'POST':
        if 'loggedin' in session:
            review_text = request.form['review']
            rating = int(request.form['rating'])
            user_id = session['id']

            cur.execute(
                "INSERT INTO reviews (user_id, movie_id, review_text, rating) VALUES (%s, %s, %s, %s)",
                (user_id, id, review_text, rating)
            )
            mysql.connection.commit()
            flash('Review submitted!')
            return redirect(url_for('movie_detail', id=id))
        else:
            flash('You must be logged in to submit a review.')
            return redirect(url_for('login'))

    cur.execute("SELECT id, title, year, genre, director FROM movies WHERE id = %s", (id,))
    movie = cur.fetchone()

    if movie:
        cur.execute("SELECT review_text, rating FROM reviews WHERE movie_id = %s", (id,))
        reviews = cur.fetchall()
        cur.close()

        return render_template('movie_detail.html', movie=movie, reviews=reviews)
    else:
        cur.close()
        return "Movie not found", 404

# Top Rated Movies route
@app.route('/top')
def top_rated():
    cur = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
    cur.execute("""
        SELECT 
            m.id, 
            m.title, 
            m.genre, 
            m.year, 
            m.director,
            ROUND(AVG(r.rating), 2) AS avg_rating,
            COUNT(r.id) AS review_count
        FROM movies m
        JOIN reviews r ON m.id = r.movie_id
        GROUP BY m.id
        HAVING review_count > 0
        ORDER BY avg_rating DESC, review_count DESC
        LIMIT 20
    """)
    top_movies = cur.fetchall()
    cur.close()
    return render_template('top.html', movies=top_movies)

# Search route
@app.route('/search')
def search():
    query = request.args.get('query', '').strip()

    cur = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
    cur.execute("""
        SELECT id, title, genre, year, director
        FROM movies
        WHERE title LIKE %s OR genre LIKE %s OR year LIKE %s
    """, (f"%{query}%", f"%{query}%", f"%{query}%"))
    results = cur.fetchall()
    cur.close()

    return render_template('search_results.html', query=query, results=results)

# Filter route
@app.route('/filter', methods=['GET'])
def filter_movies():
    genre = request.args.get('genre')
    year = request.args.get('year')

    cur = mysql.connection.cursor(MySQLdb.cursors.DictCursor)

    query = "SELECT id, title, genre, year, director FROM movies WHERE 1=1"
    params = []

    if genre and genre != 'All':
        query += " AND genre = %s"
        params.append(genre)

    if year and year != 'All':
        query += " AND year = %s"
        params.append(year)

    cur.execute(query, params)
    movies = cur.fetchall()
    cur.close()

    return render_template('filter_results.html', movies=movies, selected_genre=genre, selected_year=year)

if __name__ == '__main__':
    app.run(debug=True)