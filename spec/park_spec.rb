require 'spec_helper'

describe Park do
  before(:each) do
    @rmnp = Park.new({name: "Rocky Mountain National Park", admission_price: 10})
    @cnp = Park.new({name: "Canyonlands National Park", admission_price: 15})
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

  describe "#initialize" do
    it "can exist and have details" do
      expect(@rmnp).to be_a Park
      expect(@rmnp.name).to eq("Rocky Mountain National Park")
      expect(@rmnp.admission_price).to eq(10)
      expect(@rmnp.vehicles).to eq([])
    end
  end
end