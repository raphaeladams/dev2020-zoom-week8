# Accessorize
# Raphael Adams

require 'minitest/autorun'
require '../tv'

class TVTest < Minitest::Test

  def setup
    @tv = TV.new("QLED Smart", "Samsung", 50)
  end

  def test_to_s
    assert_output("A 50-in QLED Smart TV made by Samsung\n") { @tv.to_s }
  end

end
