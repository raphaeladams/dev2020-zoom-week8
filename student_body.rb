# Student Body
# Raphael Adams

class StudentBody
  include Enumerable
  
  def initialize
    @enrollment = Hash.new { |hash, key| hash[key] = [] }
  end

  def add_class(classroom, *students)
    students.each { |s| @enrollment[classroom.to_sym] << s }
  end

  def each
    @enrollment.each_value { |students| students.each { |s| yield s } }
  end
end