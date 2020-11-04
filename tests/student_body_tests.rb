# Student Body
# Raphael Adams

require 'minitest/autorun'
require_relative '../student_body'

class StudentBodyTest < Minitest::Test

  def setup
    @test_school = StudentBody.new
  end

  # general testing of .each

  def test_print_contents_of_empty_school
    assert_output("") { @test_school.each { |student| puts student } }
  end

  def test_print_contents_of_school_with_one_class_no_students
    @test_school.add_class("grade6")
    assert_output("") { @test_school.each { |student| puts student } }
  end

  def test_print_contents_of_school_with_one_class_one_student
    @test_school.add_class("grade6", "Peter")
    assert_output("Peter\n") { @test_school.each { |student| puts student } }
  end

  def test_print_contents_of_school_with_one_class_multiple_students
    @test_school.add_class("grade6", "Peter", "Lois")
    assert_output("Peter\nLois\n") { @test_school.each { |student| puts student } }
  end

  def test_print_contents_of_school_with_multiple_classes_multiple_students
    @test_school.add_class("grade6", "Peter", "Lois")
    @test_school.add_class("grade7", "Stewie")
    assert_output("Peter\nLois\nStewie\n") { @test_school.each { |student| puts student } }
  end


  # testing some Enumerable methods

  def test_reject
    @test_school.add_class("grade6", "Chris", "Meg")
    assert_equal ["Meg"], @test_school.reject { |student| student == "Chris" }
  end

  def test_map
    @test_school.add_class("grade6", "Chris", "Meg")
    assert_equal ["ChrisChris", "MegMeg"], @test_school.map { |student| student * 2 }
  end

  def test_reduce
    @test_school.add_class("grade6", "Chris", "Meg")
    assert_equal "ChrisMeg", @test_school.reduce(:+)
  end

  def test_select
    @test_school.add_class("grade6", "Chris", "Meg")
    assert_equal ["Chris"], @test_school.select { |student| student.length > 4 }
  end

end