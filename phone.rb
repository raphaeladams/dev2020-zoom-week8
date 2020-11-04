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
