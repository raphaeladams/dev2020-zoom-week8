# On a Silver Platter
# Raphael Adams

class Fruit
  def to_s
    puts "This is a fruit!"
  end
end

class Apple < Fruit
  def to_s
    puts "This is an apple!"
  end

  def eat
    puts "Eating apple"
  end
end

class Banana < Fruit
  def to_s
    puts "This is a banana!"
  end

  def eat
    puts "Eating banana"
  end
end

class Cheese
  def to_s
    puts "This is cheese!"
  end

  def eat
    puts "Eating cheese"
  end
end

class Sausage
  def to_s
    puts "This is a sausage!"
  end

  def eat
    puts "Eating sausage"
  end
end