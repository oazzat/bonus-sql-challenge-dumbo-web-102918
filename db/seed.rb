# Parse the CSV and seed the database here! Run 'ruby db/seed' to execute this code.
#db = SQLite3::Database.new('../db/lab_database.db')
require 'csv'
require_relative "../config/environment"

sql = <<-SQL
  INSERT INTO daily_show_guests (YEAR, GoogleKnowlege_Occupation, Show, Groupp, Raw_Guest_List)
  VALUES (?,?,?,?,?)
SQL
#guests = CSV.read("./daily_show_guests.csv")
counter = 0
#   guests.each do |row|
# if counter > 0
#
#     DB.execute(sql,row[0],row[1],row[2],row[3],row[4])
# end
#
# counter += 1
#   end
