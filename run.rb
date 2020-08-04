require 'pry'

spicy_foods = [
  { name: 'Buffalo Wings', cuisine: 'American', heat_level: 3 },
  { name: 'Mapo Tofu', cuisine: 'Sichuan', heat_level: 6 },
  { name: 'Green Curry', cuisine: 'Thai', heat_level: 9 },
]

def print_spicy_foods(spicy_foods)
spicy_foods.map do |food|
puts "#{food[:name]} (#{food[:cuisine]}) | Heat Level: #{food[:heat_level]}"
end
end
print_spicy_foods(spicy_foods)

def get_names(spicy_foods)
spicy_foods.map do |k|
  p "#{k[:name]}"
end
end
get_names(spicy_foods)

def spiciest_foods(spicy_foods)
spicy_foods.select {|food_hash|food_hash[:heat_level] > 5}
end
spiciest_foods(spicy_foods)

def get_spicy_food_by_cuisine(spicy_foods, cuisine)
  spicy_foods.find do |food_hash|
    if food_hash[:cuisine] == cuisine
      return food_hash
end
 end
end
get_spicy_food_by_cuisine(spicy_foods, "Thai")


# BONUS Deliverables
def print_spiciest_foods(spicy_foods)
spicy_foods.select do |food|
  if food[:heat_level] > 5
    puts "#{food[:name]} (#{food[:cuisine]}) | Heat Level: #{food[:heat_level]}"
end
end
end
print_spiciest_foods(spicy_foods)

def average_heat_level(spicy_foods)
spicy_foods.find do |num|
  num = spicy_foods[:heat_level].average?
end
end
average_heat_level(spicy_foods)
binding.pry
# Use this to test your methods
# run "ruby run.rb" and try calling the methods from the console

"pls"

 