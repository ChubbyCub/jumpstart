print "Welcome to Ada's Computer Candy Machine!\
(All candy provided is virtual)\n"

# Get users' input
print "How much money do you have? > $"
money = gets.chomp.to_f
while (money == nil || !money.is_a?(Numeric) || money < 0)
  print "Your input is invalid. Try again"
  print "How much money do you have? > $"
  money = gets.chomp.to_f
end
puts "$#{money}, that's all?
Well, lemme tell ya what we got here.\n"

# Print menu
table = {
  "A" => { "Name" => "Twix", "Price" => 0.65},
  "B" => { "Name" => "Chips", "Price" => 0.50 },
  "C" => { "Name" => "Nutter Butter", "Price" => 0.75 },
  "D" => { "Name" => "Peanut Butter Cup", "Price" => 0.65 },
  "E" => { "Name" => "Juicy Fruit Gum", "Price" => 0.55 }
}
table.each do |key, value|
  puts "#{key} $#{table[key]["Price"]} #{table[key]["Name"]}"
end

print "So, what'll ya have? >"
answer = gets.chomp.upcase
while !table.key?(answer)
  puts "Your input is invalid. Try again"
  puts "So, what'll ya have? >"
  answer = gets.chomp.upcase
end

# Calculate change and output response
change = (money - table[answer]["Price"]).to_f
if change < 0
  puts "You're broke. Take your $#{money} and go elsewhere."
elsif change > 0
  puts "Please take your candy, and your $#{change} change!"
else
  puts "Please take your candy!"
end
