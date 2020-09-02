require 'sqlite3'
db = SQLite3::Database.new 'test sqlite'
db.execute "INSERT INTO Cars (Name , Price) VALUES ('BMW', 7777 )"
db.close 