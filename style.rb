# # good style
# # prints the numbers 1 to 10
# (1..10).each do |num|
#   puts num
# end

# # good style
# print "Enter an animal: "
# animal = gets.chomp
# if animal == "Fish"
#   puts "Wonderful in the Water!"
# elsif animal == "Camel"
#   puts "Destination Desert!"
# else
#   puts "Worldwide Wonder!"
# end

# # good style
# # sum the numbers 1 to 10
# total = 0
# (1..10).each do |i|
#   total = total + i
# end
# # prints a message based on sum
# if total > 10
#   puts "More than ten"
# else
#   puts "Less than ten"
# end
#
# good style
print "Enter your username: "
username = gets.chomp
print "Enter your password: "
password = gets.chomp

# prints welcome message if correct username
# and password. Otherwise, prints error message
if username == "foo"
  if password == "bar"
    puts "Welcome, administrator!"
  else
    puts "Incorrect password."
  end
else
  puts "Incorrect username."
end
