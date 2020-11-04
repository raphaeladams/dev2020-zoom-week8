# Accessorize
# Raphael Adams

require 'minitest/autorun'
require '../sofa'

class SofaTest < Minitest::Test

  def setup
    @sod = Sofa.new("SODERHAMN", "brown", "leather", "loveseat")
  end

  def test_to_s_no_accessories
    assert_output("A brown SODERHAMN loveseat sofa made of leather\n") { @sod.to_s }
  end

  def test_add_one_accessory
    @sod.add_accessory("cushions")
    assert_output("A brown SODERHAMN loveseat sofa made of leather with cushions\n") { @sod.to_s }
  end

  def test_add_two_accessories
    @sod.add_accessory("cushions")
    @sod.add_accessory("throw blanket")
    assert_output("A brown SODERHAMN loveseat sofa made of leather with cushions and throw blanket\n") { @sod.to_s }
  end

  def test_add_more_than_two_accessories
    @sod.add_accessory("cushions")
    @sod.add_accessory("throw blanket")
    @sod.add_accessory("ottoman")
    assert_output("A brown SODERHAMN loveseat sofa made of leather with cushions, throw blanket and ottoman\n") { @sod.to_s }
  end

  def test_remove_accessory
    @sod.add_accessory("cushions")
    @sod.remove_accessory("cushions")
    assert_output("A brown SODERHAMN loveseat sofa made of leather\n") { @sod.to_s }
  end

  def test_remove_accessory_when_there_are_no_accessories
    assert_raises("Unable to remove \"cushions\"") { @sod.remove_accessory("cushions") }
  end

  def test_remove_accessory_that_phone_doesnt_have
    @sod.add_accessory("throw blanket")
    assert_raises("Unable to remove \"cushions\"") { @sod.remove_accessory("cushions") }
  end

end
