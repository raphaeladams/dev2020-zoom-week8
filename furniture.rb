# Accessorize
# Raphael Adams

class Furniture

  def initialize(model, colour, material)
    @model = model
    @colour = colour
    @material = material
  end

  def to_s
    puts "A #{ @colour } #{ @model } made of #{ @material }"
  end

end