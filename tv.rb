# Accessorize
# Raphael Adams

require_relative 'electronics'

class TV < Electronics
  
  def initialize(model, brand, size)
    super(model, brand)
    @size = size
  end

  def to_s
    puts "A #{ @size }-in #{ @model } TV made by #{ @brand }"
  end

end