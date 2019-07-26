require_relative 'bike'

class DockingStation
  attr_reader :bikes, :DEFAULT_CAPACITY

  def initialize
    @bikes = []
    @DEFAULT_CAPACITY = 20
  end

  def release_bike
    empty? ? fail('No bikes available') : @bikes.pop
  end

  def dock(bike)
    full? ? raise("Station full, cannot dock bike.") : @bikes << bike
  end

  private
  def full?
    @bikes.size == @DEFAULT_CAPACITY
  end

  def empty?
    @bikes.empty?
  end

end
