puts "Welcome to my election voting program!"
puts "Election candidates are: Donald Duck, Minnie Mouse, and Goofy"

# Create hash to count votes
vote_result = Hash.new(0)
10.times do
  puts "Please enter your vote: "
  vote = gets.chomp.to_s
  if vote_result.has_key?(vote)
     vote_result[vote] = 1 + vote_result[vote]
   else
     vote_result[vote] = 1
  end
end

puts "#{vote_result}"

# Print vote results
puts "ELECTION RESULTS......"
max_votes = vote_result.values.max
ties = Array.new
puts "#{max_votes}"
vote_result. each do |key, value|
  puts "#{key}: #{value} vote(s)"
  if value == max_votes
    ties << key
  end
end

if ties.length > 1
  puts "The following candidates are tied: #{ties}"
else
  puts "The winner is #{ties}"
end

# Find the winner and handle ties
# reverse_map = Hash.new
#
# vote_result.each {|key, value|
#   if !reverse_map.has_key?(value)
#     reverse_map.merge!({value => [key]})
#   else
#     reverse_map[value] << key
#   end
# }
#
# reverse_map.each do |key, value|
#   if reverse_map[key].length == 1 && key == reverse_map.keys.max
#     puts "The winner is #{vote_result.key(vote_result.values.max)}"
#   end
#
#   if reverse_map[key].length > 1 && key != reverse_map.keys.max
#     puts "The following candidates #{reverse_map[key]} are tied. Each got #{key} votes"
#   end
#
#   if reverse_map[key].length > 1 && key == reverse_map.keys.max
#     puts "We cannot determine who the winner is.
#     The maximum votes of #{key} belong to the following candidates #{reverse_map[key]}"
#   end
# end
