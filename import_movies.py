import csv
import MySQLdb

# Connect to your MySQL RDS instance
db = MySQLdb.connect(
    host="movie-db.cbykq4u6in67.us-east-2.rds.amazonaws.com",
    user="admin",
    passwd="Wilsonss!32435",
    db="movie_reviews",
    charset='utf8'  # Ensure UTF-8 encoding
)
cursor = db.cursor()

# Open the cleaned CSV file (no 'id' column, UTF-8 saved)
with open('imdb_top_250_simple.csv', newline='', encoding='utf-8') as csvfile:
    reader = csv.reader(csvfile)
    header = next(reader)  # skip the header row
    for row in reader:
        if len(row) != 4:
            continue  # Skip any incomplete rows
        title, genre, year, director = row
        try:
            cursor.execute("""
                INSERT INTO movies (title, genre, year, director)
                VALUES (%s, %s, %s, %s)
            """, (title.strip(), genre.strip(), int(year), director.strip()))
        except Exception as e:
            print(f"❌ Error with row: {row} → {e}")

db.commit()
cursor.close()
db.close()
print("✅ Import complete.")