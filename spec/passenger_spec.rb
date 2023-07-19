require 'spec_helper'

describe Passenger do
  before(:each) do
    @charlie = Passenger.new({"name" => "Charlie", "age" => 18}) 
    @taylor = Passenger.new({"name" => "Taylor", "age" => 12}) 
  end

  describe "#initialize" do
    it "can exist and have details" do
      expect(@charlie).to be_a Passenger
      expect(@charlie.name).to eq("Charlie")
      expect(@charlie.age).to eq(18)
    end
  end

  describe "#adult?" do
    it "can tell if a passenger is an adult" do
      expect(@charlie.adult?).to be true
      expect(@taylor.adult?).to be false
    end
  end

  describe "#driver?" do
    it "can return if a passenger is the driver" do
      expect(@charlie.driver?).to be false
    end
  end

  describe "#drive" do
    it "can assign the driver" do
      @charlie.drive

      expect(@charlie.driver?).to be true
    end
  end
end