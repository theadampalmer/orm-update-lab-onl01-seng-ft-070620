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
        sql = <<-SQL
        DROP TABLE students
        SQL
        DB[:conn].execute(sql)
    end
    
    def save
      
    end
    
    def self.create(name, grade)
        student = self.new(name,grade)
        student.save
    end
    
    def self.new_from_db
      
    end
    
    def self.find_by_name
      
    end
    
    def update
        sql = <<-SQL
        UPDATE students
        SET name = ?, grade = ?
        WHERE id = ?
        SQL
        DB[:conn].execute(sql, self.name, self.grade, self.id)
    end
end
