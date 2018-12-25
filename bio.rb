# get user input
print "name: "
name = gets.chomp
print "birthday: "
birthday = gets.chomp.to_s
print "occupation: "
occupation = gets.chomp

# calculate age and days till birthday
require 'date'
birthday = Date.parse(birthday)
now = DateTime.now
age = now.year - birthday.year
year_now = now.year
year_temp = now.year + 1
birthday_temp = Date.new(year_temp, birthday.mon, birthday.mday)
days_to_go = birthday_temp - now

# print the storyline
puts "#{name} is (a)n #{occupation} who is #{age} years old.
Her birthday is #{days_to_go.to_i} days from today."
