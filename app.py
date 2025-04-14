from flask import Flask, render_template

app = Flask(__name__)

movies = [
    {'id': 1, 'title': 'Inception', 'year': 2010, 'reviews': ['Great visuals!']},
    {'id': 2, 'title': 'The Dark Knight', 'year': 2008, 'reviews': ['Heath ledger is the best Joker.']},
    {'id': 3, 'title': 'Interstellar', 'year': 2014, 'reviews': ['Makes me cry everytime!']}
]

@app.route('/')
def home():
    return render_template('index.html', movies=movies)

@app.route('/movies/<int:id>')
def movie_detail(id):
    movie = next((m for m in movies if m['id'] == id), None)
    if movie:
        return render_template('movie_detail.html', movie=movie)
    else:
        return "Movie not found", 404
    
if __name__ == '__main__':
    app.run(debug=True)