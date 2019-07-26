# Feature Test

require_relative '../lib/docking_station.rb'

station = DockingStation.new

p station.capacity

station_bigger = DockingStation.new(40)

p station_bigger.capacity
