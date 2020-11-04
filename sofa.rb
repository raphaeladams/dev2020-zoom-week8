# Accessorize
# Raphael Adams

require_relative 'accessorizable'
require_relative 'furniture'

class Sofa < Furniture

  include Accessorizable

  def initialize(model, colour, material, style)
    super(model, colour, material)
    @style = style
  end

  def to_s
    print "A #{ @colour } #{ @model } #{ @style } sofa made of #{ @material }"
    accessories_to_s
    print "\n"
  end

end

# Quick tests
joe = Sofa.new("JOE", "pink", "wool", "loveseat")
joe.add_accessory("cushions")
joe.add_accessory("throw blanket")
joe.add_accessory("ottoman")
joe.remove_accessory("cushions")
joe.to_s