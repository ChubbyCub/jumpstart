print "Welcome to Ada's Computer Candy Machine!\
(All candy provided is virtual)\n"

#get user input
print "How much money do you have? > $"
money = gets.chomp.to_f
puts "$#{money}, that's all?
Well, lemme tell ya what we got here.\n"

#print menu
print "A. $0.65 Twix\nB. $0.50 Chips\nC. $0.75 Nutter Butter\nD. $0.65 Peanut Butter Cup\nE. $0.55 Juicy Fruit Gum\n"
print "So, what'll ya have? >"
answer = gets.chomp.upcase

#calculate change and output response
table = {
  "A" => 0.65,
  "B" => 0.50,
  "C" => 0.75,
  "D" => 0.65,
  "E" => 0.55
}

for i in 0..table.length do
  if(answer == table.keys[i])
    change = (money - table.values[i]).to_f
      if(change < 0)
        puts "You're broke. Take your $#{money} and go elsewhere."
      elsif(change > 0)
        puts "Please take your candy, and your $#{change} change!"
      else
        puts "Please take your candy!"
      end
      break
  end
end

puts "Invalid choice!"
