require_relative "../config/environment.rb"

class Student
attr_accessor :id, :name, :grade

    def initialize(id=nil, name, grade)
        @name = name
        @grade = grade
        @id = id
    end

    def self.create_table
         sql = <<-SQL
       CREATE TABLE IF NOT EXISTS students
       (
        id INTEGER PRIMARY KEY,
        name TEXT,
        grade TEXT
       )
       SQL
       DB[:conn].execute(sql)
    end
    
    def self.drop_table
      
    end
    
    def save
      
    end
    
    def self.create
      
    end
    
    def self.new_from_db
      
    end
    
    def self.find_by_name
      
    end
    
    def update
      
    end
end
