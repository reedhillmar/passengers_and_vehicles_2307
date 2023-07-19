require 'spec_helper'

describe Park do
  before(:each) do
    @civic = Vehicle.new("2001", "Honda", "Civic")  
    @wrx = Vehicle.new("2013", "Subaru", "WRX")
    @wrangler = Vehicle.new("2009", "Jeep", "Wrangler")
    @charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    @jude = Passenger.new({"name" => "Jude", "age" => 20}) 
    @taylor = Passenger.new({"name" => "Taylor", "age" => 12}) 
    @reed = Passenger.new({"name" => "Reed", "age" => 32})
    @erin = Passenger.new({"name" => "Erin", "age" => 35})
    @karissa = Passenger.new({"name" => "Karissa", "age" => 38})
  end
end