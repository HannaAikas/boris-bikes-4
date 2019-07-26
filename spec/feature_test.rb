# Feature Test

require_relative '../lib/docking_station.rb'

station = DockingStation.new

20.times do
  station.dock(Bike.new)
  puts "Done, bike docked!"
end

# Expecting this to fail as capacity is 20
station.dock(Bike.new)
