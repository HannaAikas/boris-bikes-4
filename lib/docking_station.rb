require_relative 'bike'

class DockingStation
  attr_reader :bikes, :capacity

  def initialize(capacity = 20)
    @bikes = []
    @capacity = capacity
  end

  def release_bike
    empty? ? fail('No bikes available') : @bikes.pop
  end

  def dock(bike)
    full? ? raise("Station full, cannot dock bike.") : @bikes << bike
  end

  private
  def full?
    @bikes.size == @capacity
  end

  def empty?
    @bikes.empty?
  end

end
