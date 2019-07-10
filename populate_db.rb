
require 'sqlite3'

begin
 
  db_name = "specr.rb"   
  db = SQLite3::Database.open db_name
  
  # name tension length pattern skip_m tie_m start_c tie_c
  db.execute "CREATE TABLE IF NOT EXISTS Racquet(id INTEGER PRIMARY KEY, name TEXT, tension TEXT, length TEXT, pattern TEXT, skip_m TEXT, tie_m TEXT, start_c TEXT, tie_c TEXT)"

rescue SQLite3::Exception => e 
    
  puts "Exception occurred"
  puts e
    
ensure
  db.close if db
end
