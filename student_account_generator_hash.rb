require 'set'
$student_data = Array.new
$id_set = Set.new

def get_id
  id = 0
  while true
    id = rand(111111...999999)
    if !$id_set.include?(id)
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


File.open("student_names.txt").each do |line|
  individual = {
    name: "",
    id: "",
    email: ""
  }
    #add empty hashes to store each student's data
    $student_data << individual
    full_name = line.chomp.lstrip.rstrip
    id = get_id
    individual[:id] = id
    individual[:name] = full_name
    individual[:email] = get_email_address(full_name, id.to_s)
end

$student_data.each_index {|i|
  $student_data[i].each do |key, value|
    puts "#{key}: #{value}"
  end
}
