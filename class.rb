class Dog
  def initialize(name, number_of_dog_friends, favourite_food)
    @name = name
    @number_of_dog_friends = number_of_dog_friends
    @favourite_food = favourite_food
    @toys = []
  end

  def my_method
    all = [@name,
           @number_of_dog_friends,
           @favourite_food]
  end

  def bark
    puts "#{@name} says Bark"
  end

  def toys(toy)
    @toys << toy
  end

  def give_a_toy
    puts "#{@name} has #{@toys.join(", ")} toys"
  end

  def information
    "The dog #{@name} has #{@number_of_dog_friends} dog friends and #{@toys.count} toys. His favourite food is #{@favourite_food}"
  end
end

sniff = Dog.new("Fenrir", 5, "bacon")
puts sniff.bark

puts sniff.my_method

sniff.toys("duck")
sniff.toys("pig")
sniff.toys("chicken")

puts sniff.give_a_toy

puts sniff.information
