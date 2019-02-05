$student_names = Array.new
$student_ids = Array.new
$student_emails = Array.new

def get_id
  id = 0
  while true
    id = rand(111111...999999)
    if !$student_ids.include?(id)
      break
    end
  end
  return id
end

def get_email_address(full_name, id)
  names = full_name.split
  email_address = ""
  if names.length > 2
    email_address = names[0][0] + names[1][0] + names[names.length - 1]
  else
    email_address = names[0][0] + names[names.length - 1]
  end
  last_three_digits = id.slice(id.length - 3, 3)

  email_address = email_address.upcase + last_three_digits + "@adadevelopersacademy.org"
end

# Read names from a text file and generate alias for emails
File.open("student_names.txt").each do |line|
  full_name = line.chomp.lstrip.rstrip
  $student_names << full_name

  id = get_id()
  $student_ids << id

  email_address = get_email_address(full_name, id.to_s)
  $student_emails << email_address
end

# puts "#{$student_names}"
# puts "#{$student_ids}"
# puts "#{$student_emails}"

$student_names.length.times do |i|
  puts "#{$student_names[i]} : #{$student_ids[i]} : #{$student_emails[i]}"
end
