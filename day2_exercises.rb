puts "Question 1: Prompt for a number. If the number is greater than 70, print
        PASSING; otherwise, print NOT PASSING"
print "Please enter a number: "
input_one = gets.chomp.to_i
puts (input_one > 70 ? "PASSING" : "NOT PASSING")

puts "---------------------------------------------------------------------"
puts "Question 2: Prompt for a string. If the string is equal to green, print GO,
    otherwise, print STOP"
print "Please enter a word: "
input_two = gets.chomp.downcase
puts (input_two == "green" ? "GO" : "STOP")

puts "---------------------------------------------------------------------"
puts "Question 3: Prompt for a number. If the number is even, print EVEN, otherwise, print ODD"
print "Please enter a number: "
input_three = gets.chomp.to_i
puts (input_three % 2 == 0 ? "EVEN" : "ODD")

puts "---------------------------------------------------------------------"
puts "Question 4: Prompt for a number. If the number is evenly divisible by 5, print MULTIPLE
    OF 5, otherwise, print NOT A MULTIPLE OF 5"
print "Please enter a number: "
input_four = gets.chomp.to_i
puts (input_four % 5 == 0 ? "MULTIPLE OF 5" : "NOT A MULTIPLE OF 5")

puts "---------------------------------------------------------------------"
puts "Question 5: Prompt for a number. If the number is less than 10, print ONE DIGIT. If
    the number is 100 or greater, print THREE DIGITS, otherwise print TWO DIGITS"
print "Please enter a number: "
input_five = gets.chomp.to_i
if input_five < 10
  puts "ONE DIGIT"
elsif input_five < 100
  puts "TWO DIGITS"
else
  puts "THREE DIGITS"
end

puts "---------------------------------------------------------------------"
puts "Question 6: Prompt for a jersey number. If that number is 12, 71, or 80, print That
  number is retired from the Seattle Seahawks!, otherwise do nothing"
print "Please enter a jersey number: "
jersey_number = gets.chomp.to_i
if jersey_number == 12 || jersey_number == 71 || jersey_number == 80
  puts "That number is retired from the Seattle Seahawks!"
end

puts "---------------------------------------------------------------------"
puts "Question 7: Prompt for a state. If the state is Washington, Oregon, or Idaho, print
  This state is in the PNW, otherwise print You should move to the PNW;
  it’s great here!"
print "Please enter a state name: "
state = gets.chomp.capitalize
puts ((state == "Washington" || state == "Oregon" || state == "Idaho") ?
"This state is in the PNW" : "You should move to the PNW; it’s great here!")

puts "---------------------------------------------------------------------"
puts "Question 8: Prompt for a one of the following: SHORT, TALL, GRANDE, VENTI.
    Print out the number of ounces that drink includes (8, 12, 16, 20 respectively)."
size = { "SHORT" => 8, "TALL" => 12, "GRANDE" => 16, "VENTI" => 20 }

while true
  print "Please enter your drink size: "
  input_size = gets.chomp.upcase
  if size.has_key?(input_size)
    puts "#{size[input_size]} oz"
    break
  else
    puts "Your input is invalid!"
  end
end

puts "---------------------------------------------------------------------"
puts "Question 9: Prompt for rate of pay and hours worked. Calculate gross pay.
  Provide time-and-a-half for hours worked beyond 40 (e.g., if you
    get paid $10/hr and work 45 hours in a week,
    you would gross $475 (40 x 10 + 5 x 15)."
print "What is your pay rate? > "
pay_rate = gets.chomp.to_i
print "How many hours did you work? > "
hours = gets.chomp.to_f
base_pay = pay_rate * 40
if hours > 40
  total_pay = (hours - 40) * 1.5 * pay_rate + base_pay
  puts "#{total_pay}"
else
  total_pay = base_pay
  puts "#{total_pay}"
end

puts "---------------------------------------------------------------------"
puts "Question 10: Rewrite the solution to the previous problem adding this modification:
  do not process any employee if their hours worked is greater than 60,
    instead display the message Please see manager"
print "What is your pay rate? > "
pay_rate = gets.chomp.to_i
print "How many hours did you work? > "
hours = gets.chomp.to_f
base_pay = pay_rate * 40
if hours > 40 && hours <= 60
  total_pay = (hours - 40) * 1.5 * pay_rate + base_pay
  puts "#{total_pay}"
elsif hours > 60
  puts "Please see manager."
else
  total_pay = base_pay
  puts "#{total_pay}"
end
