require 'bundler'
Bundler.require
require "pry"


# Setup a DB connection here
require 'sqlite3'
#require_relative '../lib/queries'
#require_relative '../db/seed'

DB = SQLite3::Database.new ("./db/new_db")


# DB.execute("CREATE TABLE daily_show_guests (
# id	INTEGER PRIMARY KEY,
# YEAR INTEGER,
# GoogleKnowlege_Occupation	TEXT,
# Show	DATE,
# Groupp	text,
# Raw_Guest_List	TEXT)"
# )
