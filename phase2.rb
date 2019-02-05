class Vehicle
  # Vehicle constructor
  def initialize (distance, gas_price)
    @distance = distance
    @gas_price = gas_price
  end

  def set_mpg
    print "  Average miles per gallon: "
    @mpg = gets.chomp.to_f
    while @mpg == nil || !@mpg.is_a?(Numeric) || @mpg <= 0
      puts "  Invalid input! Please enter your average miles per gallon again!"
      print "  Average miles per gallon: "
      @mpg = gets.chomp.to_f
    end
  end

  def set_capacity
    print "  Gallon capacity: "
    @capacity = gets.chomp.to_f
    while @capacity == nil || !@capacity.is_a?(Numeric) || @capacity <= 0
      puts "  Invalid input! Please enter your gallon capacity!"
      print "  Gallon capacity: "
      @capacity = gets.chomp.to_f
    end
  end

  def set_cost
    print "  Vehicle maintenance cost: "
    @cost = gets.chomp.to_f
    while @cost == nil || !@cost.is_a?(Numeric) || @cost <= 0
      puts "  Invalid input! Please enter your vehicle maintenance cost again!"
      print "  Vehicle maintence cost: "
      @cost = gets.chomp.to_f
    end
  end

  def calculate_gallons
    @distance / @mpg
  end

  def calculate_distance_per_tank
    @mpg * @capacity
  end

  def calculate_stops
    (@distance / calculate_distance_per_tank).ceil
  end

  def calculate_total_cost
    (calculate_stops * @cost) + (@gas_price * calculate_gallons)
  end
end

puts "Welcome to the road trip vehicle compare program! Please provide some information"

travel_distance = 3000
gas_price = 3
min = nil
vehicles = Array.new
# Create four vehicles and find the minimum total cost of each vehicle
(1..4).each do |num|
  puts "Vehicle details for person #{num}:"
  vehicle = Vehicle.new travel_distance, gas_price
  vehicle.set_mpg
  vehicle.set_capacity
  vehicle.set_cost
  if min == nil
    min = vehicle.calculate_total_cost
  else
    min = [min, vehicle.calculate_total_cost].min
  end
  vehicles << vehicle
end

# puts "#{min}"
puts " "
puts "===SUMMARY==="

sum_cost = 0
sum_gallons = 0
min_vehicle_index = 0
ties = Array.new
# Calculate sum_cost, sum_gallons, and min_cost
vehicles.each_index {|i|
  sum_cost += vehicles[i].calculate_total_cost
  sum_gallons += vehicles[i].calculate_gallons

  if vehicles[i].calculate_total_cost < min
    min_vehicle_index = i
    ties.clear
  end

  if vehicles[i].calculate_total_cost == min
    ties << i
  end
}

# puts "#{ties}"

puts "Distance per gas tank:"
vehicles.each_index {|i|
  distance_per_gas_tank = vehicles[i].calculate_distance_per_tank
  puts "  Vehicle for person #{i + 1}: %0.2f miles"%[distance_per_gas_tank]
}

puts "Number of refueling stops needed:"
vehicles.each_index {|i|
  refueling_stops = vehicles[i].calculate_stops
  puts "  Vehicle for person #{i + 1}: #{refueling_stops}"
}

puts "Total cost per vehicle:"
vehicles.each_index {|i|
  total_cost = vehicles[i].calculate_total_cost
  puts "  Vehicle for person #{i + 1}: $%0.2f"%[total_cost]
}

puts " "
puts "Total gallons of fuel burnt if all people travel separately in their own vehicle: %0.2f"%[sum_gallons]
if ties.length > 1
  puts "The following vehicles have the best fuel economy:"
  ties.each { |x| puts "Vehicle ##{x + 1}" }
else
  puts "Best choice of vehicle to carpool based on fuel economy: Vehicle for person #{min_vehicle_index + 1}"
end
puts "By carpooling in the most economical vehicle, a total of $%0.2f will be saved."%[sum_cost - vehicles[min_vehicle_index].calculate_total_cost]
puts " "
puts "Thank you for using the road trip vehicle compare program!"
