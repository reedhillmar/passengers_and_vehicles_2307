require 'spec_helper'

describe Vehicle do
  before(:each) do
    @vehicle = Vehicle.new("2001", "Honda", "Civic")  
    @charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    @jude = Passenger.new({"name" => "Jude", "age" => 20}) 
    @taylor = Passenger.new({"name" => "Taylor", "age" => 12}) 
  end

  describe "#initialize" do
    it "can exist and have details" do
      expect(@vehicle).to be_a Vehicle
      expect(@vehicle.year).to eq("2001")
      expect(@vehicle.make).to eq("Honda")
      expect(@vehicle.model).to eq("Civic")
    end
  end

  describe "#speeding?" do
    it "can return if a vehicle is speeding" do
      expect(@vehicle.speeding?).to be false
    end
  end

  describe "#speed" do
    it "can make a vehicle speed" do
      @vehicle.speed

      expect(@vehicle.speeding?).to be true
    end
  end

  describe "#passengers" do
    it "has no passengers by default" do
      expect(@vehicle.passengers).to eq([])
    end
  end

  describe "#add_passenger" do
    it "can add passengers" do
      @vehicle.add_passenger(@charlie)
      @vehicle.add_passenger(@jude)
      @vehicle.add_passenger(@taylor) 

      expect(@vehicle.passengers).to eq([@charlie, @jude, @taylor])
    end
  end
end