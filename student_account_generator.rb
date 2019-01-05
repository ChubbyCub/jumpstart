student_names = Array.new
student_ids = Array.new
student_emails = Array.new

File.open("student_names.txt").each do |line|
    student_names << line.chomp
end

# puts "#{student_names}"

count = 0
while(count < student_names.length)
  num = rand(111111...999999).to_s
  if (!student_ids.include?(num))
    count += 1
    student_ids << num
  end
end

#puts "#{student_ids}"

temp_name_array = Array.new

for i in 0...student_names.length do
  name = student_names[i].split
  #puts "#{name}"
  if(name.length > 2)
    first_letter = name[0][0] + name [1][0]
  else
    first_letter = name[0][0]
  end
  #puts "#{first_letter}"
  last_name = name[name.length - 1]
  first_last = first_letter + last_name
  temp_name_array << first_last
end

#puts "#{temp_name_array}"

last_three_array = Array.new

for i in 0...student_ids.length do
  id = student_ids[i].to_s
  last_three_digits = id[(id.length - 3)..(id.length - 1)]
  last_three_array << last_three_digits
end

#puts "#{last_three_array}"

for i in 0...temp_name_array.length do
  email = temp_name_array[i] + last_three_array[i] + "@adadevelopersacademy.org"
  student_emails << email
end

#puts "#{student_emails}"

for i in 0...student_names.length do
  puts "#{student_names[i]} : #{student_ids[i]} : #{student_emails[i]}"
end
