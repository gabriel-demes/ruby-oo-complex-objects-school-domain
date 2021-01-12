# code here!
class School

    attr_accessor :name,:roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(student, grade)
        if roster[grade]
            roster[grade].push(student)
        else 
            roster[grade] = [student]
        end
    end

    def grade(yr)
        @roster[yr]
    end

    def sort
        @roster.each {|grade,student|
        @roster[grade] = student.sort}
    end

end