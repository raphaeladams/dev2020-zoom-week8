# Accessorize
# Raphael Adams

require 'minitest/autorun'
require '../phone'

class PhoneTest < Minitest::Test

  def setup
    @pix = Phone.new("Pixel", "Google", "50")
  end

  def test_to_s_no_accessories
    assert_output("A 50GB Pixel phone made by Google\n") { @pix.to_s }
  end

  def test_add_one_accessory
    @pix.add_accessory("earbuds")
    assert_output("A 50GB Pixel phone made by Google with earbuds\n") { @pix.to_s }
  end

  def test_add_two_accessories
    @pix.add_accessory("earbuds")
    @pix.add_accessory("case")
    assert_output("A 50GB Pixel phone made by Google with earbuds and case\n") { @pix.to_s }
  end

  def test_add_more_than_two_accessories
    @pix.add_accessory("earbuds")
    @pix.add_accessory("case")
    @pix.add_accessory("screen protector")
    assert_output("A 50GB Pixel phone made by Google with earbuds, case and screen protector\n") { @pix.to_s }
  end

  def test_remove_accessory
    @pix.add_accessory("earbuds")
    @pix.remove_accessory("earbuds")
    assert_output("A 50GB Pixel phone made by Google\n") { @pix.to_s }
  end

  def test_remove_accessory_when_there_are_no_accessories
    assert_raises("Unable to remove \"earbuds\"") { @pix.remove_accessory("earbuds") }
  end

  def test_remove_accessory_that_phone_doesnt_have
    @pix.add_accessory("case")
    assert_raises("Unable to remove \"earbuds\"") { @pix.remove_accessory("earbuds") }
  end

end
