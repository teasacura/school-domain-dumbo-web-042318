require "pry"

class School
  attr_reader :roster, :grade

  def initialize(roster)
    @roster = {}
  end

  def add_student(name, grade)
    @name = name
    @grade = grade
    @roster[@grade] ||= []
    @roster[@grade] << @name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |k,v|
      @roster[k]= v.sort
    end
  end

end
