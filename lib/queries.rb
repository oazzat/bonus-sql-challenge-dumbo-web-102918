# Write methods that return SQL queries for each part of the challeng here
require_relative "../config/environment.rb"

class Meths

def self.guest_with_most_appearances
  sql = <<-SQL
    SELECT Raw_Guest_List FROM daily_show_guests
    GROUP BY Raw_Guest_List
    ORDER BY count(Raw_Guest_List) DESC LIMIT 1
  SQL

  DB.execute(sql)
end

def self.pop_prof_each_year
  sql = <<-SQL
    SELECT YEAR,GoogleKnowlege_Occupation FROM (SELECT YEAR,GoogleKnowlege_Occupation FROM daily_show_guests
    GROUP BY GoogleKnowlege_Occupation, YEAR
    ORDER BY YEAR, count(GoogleKnowlege_Occupation) DESC) GROUP BY YEAR
  SQL

  DB.execute(sql)
end

def self.pop_prof_overall
  sql = <<-SQL
    SELECT GoogleKnowlege_Occupation FROM daily_show_guests
    GROUP BY GoogleKnowlege_Occupation
    ORDER BY count(GoogleKnowlege_Occupation) DESC LIMIT 1
  SQL

  DB.execute(sql)
end

def self.firstname_bill
  sql = <<-SQL
    SELECT count(Raw_Guest_List) FROM daily_show_guests
    WHERE Raw_Guest_List LIKE "Bill %"
  SQL

  DB.execute(sql)
end

def self.date_Patrick_Stewart
  sql = <<-SQL
    SELECT Show FROM daily_show_guests
    WHERE Raw_Guest_List = "Patrick Stewart"
  SQL

  DB.execute(sql)
end

def self.year_most_guests
  sql = <<-SQL
    SELECT YEAR, count(Raw_Guest_List) FROM daily_show_guests
    GROUP BY YEAR
    ORDER BY count(Raw_Guest_List) DESC LIMIT 1
  SQL

  DB.execute(sql)
end

def self.most_pop_group
  sql = <<-SQL
    SELECT Groupp FROM daily_show_guests
    GROUP BY Groupp
    ORDER BY count(Groupp) DESC LIMIT 1
  SQL

  DB.execute(sql)
end

end
