require_relative 'bike'

class DockingStation
  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    fail 'No bikes available' if @bikes.empty?
    @bikes.pop
  end

  def dock(bike)
    @bikes.size == 20 ? raise("Station full, cannot dock bike.") : @bikes << bike
  end

end
