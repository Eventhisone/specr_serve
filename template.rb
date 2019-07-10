# A sqlite3 database interaction template


require 'sqlite3'

begin
 
  db_name = "test.db"   
  db = SQLite3::Database.new db_name
            
rescue SQLite3::Exception => e 
    
  puts "Exception occurred"
  puts e
    
ensure
  db.close if db
end
