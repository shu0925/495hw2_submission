#
#  hw2_2.rb
#  task reminder
#
#  Created by Shu Jie Chen on 9/27/12.
#  File: ar_test.rb


require "active_record"

#Adapter for the SQLite3
active_record::Base::establish_connection(:adapter =>"sqlite3",:database =>"reminderdb.sqlite")

#Define database schema, and create database "people"
class PeoleTableScript < ActivRecord:: Mirgration
    def self.up
    create_table :reminders do |t|
        t.string :task_title
        t.text :task_memo
        t.date :task_memodate
        t.date :task_duedate
        
        
        end
    end
    

    def self.down
        drop_table :reminders
    end

end


#Create the table that will be used in the database
PeopleTableScript.up

class Reminder < ActivRecord::Base
end

