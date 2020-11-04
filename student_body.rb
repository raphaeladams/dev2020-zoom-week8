# Student Body
# Raphael Adams

class StudentBody
  include Enumerable

  attr_reader :enrollment
  
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

jackson_high = StudentBody.new
jackson_high.add_class("grade6", "john", "mary", "richard")
print jackson_high.enrollment
print "\n"

jackson_high.each { |student| puts "Hi #{ student }!" }