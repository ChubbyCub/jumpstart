puts "Welcome to my election voting program!"
puts "Election candidates are: Donald Duck, Minnie Mouse, and Goofy"

#store user inputs
temp_array = Array.new
10.times do
  puts "Please enter your vote: "
  vote = gets.chomp.to_s
  temp_array << vote
end

temp_array.each_index {|i|
  puts "Vote ##{i + 1}: #{temp_array[i]}"
}

#create hash to count votes
vote_result = Hash.new

for name in temp_array
   if(vote_result.has_key?(name))
      vote_result[name] = 1 + vote_result[name]
    else
      vote_result[name] = 1
   end
end

#print vote results
puts "ELECTION RESULTS......"
vote_result. each do |key, value|
  puts "#{key}: #{value} vote(s)"
end

#Find the winner and handle ties
reverse_map = Hash.new

vote_result.each {|key, value|
  if(!reverse_map.has_key?(value))
    reverse_map.merge!({value => [key]})
  else
    reverse_map[value] << key
  end
}

puts "The winner is #{vote_result.key(vote_result.values.max)}"

reverse_map.each do |key, value|
  if(value.length > 1)
    puts "The following candidates #{reverse_map[key]} are tied. Each got #{key} votes"
  end
end
