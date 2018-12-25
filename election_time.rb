print "Welcome to my election voting program!\n"
print "Election candidates are: Donald Duck, Minnie Mouse, Goofy\n"

#store user inputs
temp_array = Array.new
10.times do
  puts "Please enter your vote: "
  vote = gets.chomp.to_s
  temp_array << vote
end

for i in 0...temp_array.length do
  puts "Vote ##{i + 1}: #{temp_array[i]}"
end

#create hash to count votes
vote_result = Hash.new

for i in 0...temp_array.length do
  if(!vote_result.has_key?(temp_array[i]))
    vote_result.merge!(temp_array[i] => 0)
  end
end

#puts "#{vote_result}"

for i in 0...temp_array.length do
  if(vote_result.has_key?(temp_array[i]))
    vote_result[temp_array[i]] = vote_result[temp_array[i]] + 1
  end
end

#print vote results
print "ELECTION RESULTS......\n"
for i in 0...vote_result.length do
  if (vote_result.values[i] <= 1)
    puts "#{vote_result.keys[i]}: #{vote_result.values[i]} vote"
  else
    puts "#{vote_result.keys[i]}: #{vote_result.values[i]} votes"
  end
end

#Find the winner and handle ties
reverse_map = Hash.new

for i in 0...vote_result.length do
  if(!reverse_map.has_key?(vote_result.values[i]))
    reverse_map[vote_result.values[i]] = [vote_result.keys[i]]
  else
    reverse_map[vote_result.values[i]].push(vote_result.keys[i])
  end
end

#print "#{reverse_map}\n"


reverse_map.each { |k, v| puts "The winner is #{v}" if k == reverse_map.keys.max }

for i in 0...reverse_map.length do
  if(reverse_map.values[i].length > 1)
    puts "The following candidates #{reverse_map.values[i]} are tied. Each got #{reverse_map.keys[i]} votes"
  end
end
