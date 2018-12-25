student_data = Array.new

File.open("student_names.txt").each do |line|
    individual = {
      name: "",
      id: "",
      email: ""
    }
    #add empty hashes to store each student's data
    student_data << individual

    full_name = line.chomp
    temp_name_array = full_name.split
    if(temp_name_array.length > 2)
      first_letter = temp_name_array[0][0] + temp_name_array[1][0]
    else
      first_letter = temp_name_array[0][0]
    end

    last_name = temp_name_array[temp_name_array.length - 1]
    first_last = first_letter + last_name

    id = rand(111111...999999).to_s
    last_three_digits = id[(id.length - 3)..(id.length - 1)]
    
    individual[:name] = full_name
    individual[:id] = id
    individual[:email] = first_last + last_three_digits + "@adadevelopersacademy.org"
end

puts "#{student_data}"
