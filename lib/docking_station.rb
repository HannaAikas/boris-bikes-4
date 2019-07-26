require_relative 'bike'

class DockingStation
  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    empty? ? fail('No bikes available') : @bikes.pop
  end

  def dock(bike)
    full? ? raise("Station full, cannot dock bike.") : @bikes << bike
  end

  private
  def full?
    @bikes.size == 20
  end

  def empty?
    @bikes.empty?
  end

end
