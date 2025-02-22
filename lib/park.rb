class Park
  attr_reader :name, :admission_price, :vehicles

  def initialize(park_details)
    @name = park_details[:name]
    @admission_price = park_details[:admission_price]
    @vehicles = []
  end

  def add_vehicle(vehicle)
    @vehicles << vehicle
  end

  def passengers
    @vehicles.map {|vehicle| vehicle.passengers}.flatten
  end

  def revenue
    @vehicles.sum {|vehicle| vehicle.num_adults * @admission_price}
  end

  def all_attendees
    passengers.map {|passenger| passenger.name}.sort
  end

  def minors
    passengers.find_all {|passenger| !passenger.adult?}.map {|passenger| passenger.name}.sort
  end

  def adults
    passengers.find_all {|passenger| passenger.adult?}.map {|passenger| passenger.name}.sort
  end
end