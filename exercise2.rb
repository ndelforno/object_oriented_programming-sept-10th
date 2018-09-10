 class Cat
  def initialize(name,preferred_food,meal_time)
    @name = name
    @preferred_food = preferred_food
    @meal_time = meal_time
  end
  #instance method
  def eats_at
    return @meal_time
  end

  def meow
    return "My name is #{@name} and I eat #{@preferred_food} at #{@meal_time}"
  end
end

cat1 = Cat.new("joe","milk",12)
cat2 = Cat.new("ted","meat",9)

puts cat1.eats_at
puts cat2.meow
puts cat1.meow
