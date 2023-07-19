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
end