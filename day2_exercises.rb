#problem 1
input_one = gets.chomp.to_i
if(input_one > 70)
  puts "PASSING"
else
  puts "NOT PASSING"
end

#problem 2
input_two = gets.chomp
if(input_two == "green")
  puts "GO"
else
  puts "STOP"
end

#problem 3
input_three = gets.chomp.to_i
if(input_three % 2 == 0)
  puts "EVEN"
else
  puts "ODD"
end

#problem 4
input_four = gets.chomp.to_i
if(input_four % 5 == 0)
  puts "MULTIPLE OF 5"
else
  puts "NOT A MULTIPLE OF 5"
end

#problem 5
input_five = gets.chomp.to_i
if(input_five < 10)
  puts "ONE DIGIT"
elsif (input_five >= 100)
  puts "THREE DIGITS"
else
  puts "TWO DIGITS"
end

#question 6
jersey_number = gets.chomp.to_i
if(jersey_number == 12 || jersey_number == 71 || jersey_number == 80)
  puts "That number is retired from the Seattle Seahawks!"
end

#question 7
state = gets.chomp
if(state == "Washington" || state == "Oregon" || state == "Idaho")
  puts "This state is in the PNW"
else
  puts "You should move to the PNW; it’s great here!"
end

#question 8
size = {"SHORT" => 8, "TALL" => 12, "GRANDE" => 16, "VENTI" => 20}
print "Please enter your drink size: "
input_size = gets.chomp
puts "#{size[input_size]}"

#question 9
print "What is your pay rate? > "
pay_rate = gets.chomp.to_i
print "How many hours did you work? > "
hours = gets.chomp.to_f
base_pay = pay_rate * 40
if(hours > 40)
  total_pay = (hours - 40) * 1.5 * pay_rate + base_pay
  puts "#{total_pay}"
else
  total_pay = base_pay
  puts "#{total_pay}"
end

#question 10
print "What is your pay rate? > "
pay_rate = gets.chomp.to_i
print "How many hours did you work? > "
hours = gets.chomp.to_f
base_pay = pay_rate * 40
if(hours > 40 && hours <= 60)
  total_pay = (hours - 40) * 1.5 * pay_rate + base_pay
  puts "#{total_pay}"
elsif(hours > 60)
  puts "Please see manager."
else
  total_pay = base_pay
  puts "#{total_pay}"
end
