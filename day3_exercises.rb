#question 1
num = rand(0...1000)
print "Guess my number: "
input = gets.chomp.to_i
num_guesses = 1
while input != num
  if(input < num)
    num_guesses += 1
    puts "Higher"
    print "Guess my number: "
    input = gets.chomp.to_i
  else
    num_guesses += 1
    puts "Lower"
    print "Guess my number: "
    input = gets.chomp.to_i
  end
end

puts "You got it in #{num_guesses}"

#question 2
print "Which player do you want to Goose? "
input = gets.chomp.to_i
player_num = 1
while player_num < input
  puts "Player #{player_num}: Duck"
  player_num += 1
end
puts "Player #{input}: Goose"

#question 3
print "Please enter number of petals: "
num_petals = gets.chomp.to_i
petal_count = 1
while petal_count <= num_petals
  if(petal_count % 2 == 1)
    puts "plucking petal ##{petal_count}: they love me"
    petal_count += 1
  else
    puts "plucking petal ##{petal_count}: they love me not"
    petal_count += 1
  end
end

#question 4
puts "Hello! We are going to total some numbers!"
puts "Enter a negative number to quit."

total = 0
input = gets.chomp.to_i
while input > 0
  total += input
  input = gets.chomp.to_i
  if(input < 0)
    break
  end
end

puts "Result: #{total}"
