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

  describe "#add_vehicle" do
    it "can track vehicles entering the park" do
      @rmnp.add_vehicle(@civic)
      @rmnp.add_vehicle(@wrx)

      expect(@rmnp.vehicles).to eq([@civic, @wrx])
    end
  end

  describe "#passengers" do
    it "can list passengers that have entered the park" do
      @wrx.add_passenger(@reed)
      @wrx.add_passenger(@erin)
      @wrangler.add_passenger(@karissa)
      @rmnp.add_vehicle(@wrx)
      @rmnp.add_vehicle(@wrangler)

      expect(@rmnp.passengers).to eq ([@reed, @erin, @karissa])
    end
  end

  describe "#revenue" do
    it "can calculate revenue generated" do
      @wrx.add_passenger(@reed)
      @wrx.add_passenger(@erin)
      @wrangler.add_passenger(@karissa)
      @rmnp.add_vehicle(@wrx)
      @rmnp.add_vehicle(@wrangler)

      @civic.add_passenger(@charlie)
      @civic.add_passenger(@jude)
      @civic.add_passenger(@taylor)
      @cnp.add_vehicle(@civic)

      expect(@rmnp.revenue).to eq(30)
      expect(@cnp.revenue).to eq(30)
    end
  end

  describe "#all_attendees" do
    it "can list all visitors alphabetically" do
      @civic.add_passenger(@jude)
      @civic.add_passenger(@charlie)
      @civic.add_passenger(@taylor)
      @cnp.add_vehicle(@civic)

      expect(@rmnp.all_attendees).to eq (["Charlie", "Jude", "Taylor"])
    end
  end
end