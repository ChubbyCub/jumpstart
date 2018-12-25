# create an array of different food types
foods = ["shrimp", "cauliflower", "salmon", "garlic", "oysters",
"salami", "tomatoes", "okra", "zucchini", "avocado"]
# get users' input
print "\nHow many foods would you like to see? I suggest 10, but it's up to you. "
items = gets.chomp.to_i
if items > 10
  puts "Best I can do is 10. Let's do 10."
  items = 10
elsif items >= 1 && items <= 10
  puts "Ok! Let's do " + items.to_s + "."
else
  puts "We'll just pretend you said 10."
  items = 10
end

# print a list of 10 random foods from the foods array
puts "...Your Fancy Random Menu..."
items.times do |i|
y = foods[rand(0...(foods.length))]
puts i.to_s + ": " + y
end
