module BookKeeping
  VERSION = 1
end
class School
  def initialize 
    @school = Hash.new  {[]}
  end

  def to_h
    sorted = @school.map { |grade, students| [grade, students.sort] }.sort
    Hash[sorted]
  end

  def add(student, grade)
    @school[grade] <<= student
  end

  def grade(number)
    @school.values_at(number).flatten.sort
  end

end