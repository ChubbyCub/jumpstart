# number = gets.chomp.to_i
# if(number > 70)
#   print "PASSING\n"
# else
#   print "NOT PASSING\n"
# end

# answer = gets.chomp.to_s
# if(answer == "green")
#   print "GO\n"
# else
#   print "STOP\n"
# end

# number = gets.chomp.to_i
# if (number % 2 == 0)
#   print "EVEN\n"
# else
#   print "ODD\n"
# end

# number = gets.chomp.to_i
# if (number % 5 == 0)
#   print "MULTIPLE OF 5\n"
# else
#   print "NOT A MULTIPLE OF 5\n"
# end

# number = gets.chomp.to_i
# if (number < 10)
#   print "ONE DIGIT\n"
# elsif(number >= 100)
#   print "THREE DIGITS\n"
# else
#   print "TWO DIGITS"
# end

# number = gets.chomp.to_i
# if(number == 12 || number == 71 || number == 80)
#   print "That number is retired from the Seattle Seahawks!\n"
# end

# drink = gets.chomp.to_s
# if(drink == "SHORT")
#   print "Short: 8oz\n"
# elsif(drink == "TALL")
#   print "Tall: 12oz\n"
# elsif(drink == "GRANDE")
#   print "Grande: 16oz\n"
# elsif(drink == "VENTI")
#   print "Venti: 20oz\n"
# end

print "Enter your hourly rate: "
rate = gets.chomp.to_f
print "Enter your total hours: "
hours = gets.chomp.to_f
#calculate gross pay based on 40 hours
gross_pay = rate * 40
#calculate gross pay plus overtime
if(hours > 40 && hours <= 60)
  gross_pay += (hours - 40) * (rate * 1.5)
  puts "Gross pay: #{gross_pay}"
elsif(hours <= 40 )
  puts "Gross pay: #{gross_pay}"
else
  puts "Please see manager"
end
