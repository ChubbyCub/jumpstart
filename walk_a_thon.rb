puts "Welcome to Crystal's Walk-A-Thon Tracker"
puts "Our goal is to raise money"

print "Enter the earning goal for this event > $"
goal = gets.chomp.to_f
print "Enter the amount earned per lap (per person) > $"
earn_per_lap = gets.chomp.to_f

walk_a_thon = Hash.new

puts "Please enter the number of laps completed by each person."

(1..5).each do |num|
  print "Walker ##{num} > "
  num_laps = gets.chomp.to_i
  amount_earned = num_laps * earn_per_lap
  puts "--> Earned $#{amount_earned}"
  walk_a_thon.store(num, amount_earned)
end

puts "================================================="

#puts "#{walk_a_thon}"

num_max = 0
total_earn = 0
for i in 0...walk_a_thon.length do
  total_earn += walk_a_thon.values[i]
  if(walk_a_thon.values[i] > num_max)
    num_max = walk_a_thon.values[i]
  end
end

#handle ties

puts "Higest Earning Walkers are: "
for i in 0...walk_a_thon.length do
  if(walk_a_thon.values[i] == num_max)
    puts "Walker##{walk_a_thon.keys[i]}"
  end
end

puts "Total amount earned: $%0.2f"%[total_earn]

if(total_earn < goal)
  puts "Goal met? NO :-("
else
  puts "Goal met? YES :-)"
end
