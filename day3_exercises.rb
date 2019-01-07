#question 1
num = rand(0...1000)
input = 2000
num_guesses = 0
while input != num
  print "Guess my number: "
  input = gets.chomp.to_i
  num_guesses += 1
  if(input < num)
    puts "Higher"
  elsif(input > num)
    puts "Lower"
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
petal_count = 0
while petal_count < num_petals
  petal_count += 1
  if(petal_count % 2 == 1)
    puts "plucking petal ##{petal_count}: they love me"
  else
    puts "plucking petal ##{petal_count}: they love me not"
  end
end

#question 4
puts "Hello! We are going to total some numbers!"
puts "Enter a negative number to quit."

total = 0
while (true)
  print "Enter your number "
  input1 = gets.chomp.to_i
  print "Enter your number again "
  input2 = gets.chomp.to_i
  if(input1 != input2)
    puts "Your two inputs do not match. Enter again"
    next
  end
  if(input1 < 0)
    break
  end
  total += input1
end

puts "Result: #{total}"
