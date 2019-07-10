
require 'sqlite3'

begin
 
  db_name = "specr.rb"   
  db = SQLite3::Database.new db_name
            
rescue SQLite3::Exception => e 
    
  puts "Exception occurred"
  puts e
    
ensure
  db.close if db
end
