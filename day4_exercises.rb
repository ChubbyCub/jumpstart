def isValid (password)
  result = true
  if (password.length < 8)
    puts "Your password is not at least 8 characters long"
    result = false
  end
  if (password !~ /[\d]/)
    puts "Your password does not contain at least one digit"
    result = false
  end
  if (password !~ /[@%\*!]/)
    puts "Your password does not contain any of the following symbols : @, %, *, or !"
    result = false
  end
  if (password !~ /[a-zA-Z]+/)
    puts "Your password does not contain at least one UPPER CASE letter."
    result = false
  end
  return result
end


while (true)
  puts "Create new password"
  password = gets.chomp
  if(!isValid(password))
    next
  end
  puts "Please enter your password again."
  repeat = gets.chomp
  if(repeat != password)
    puts "Your two passwords do not match."
    next
  end
  
end
puts "Password is successfully created."
