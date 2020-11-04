# Accessorize
# Raphael Adams

require_relative 'accessorizable'
require_relative 'electronics'

class Phone < Electronics

  include Accessorizable
  
  def initialize(model, brand, storage)
    super(model, brand)
    @storage = storage
  end

  def to_s
    print "A #{ @storage }GB #{ @model } phone made by #{ @brand }"
    accessories_to_s
    print "\n"
  end

end

# Quick tests
pix = Phone.new("Pixel", "Google", "50")
pix.add_accessory("case")
pix.add_accessory("earbuds")
pix.add_accessory("screen protector")
pix.remove_accessory("case")
pix.to_s