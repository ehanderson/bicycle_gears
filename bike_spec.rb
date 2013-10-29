require 'rspec'
require_relative 'bike'


describe Pizza do
  let(:pizza) { Pizza.new('henry bike') }


  describe "#initialize" do
    it "should create an instance of Pizza" do
      pizza.should be_an_instance_of Pizza
    end

    it "requires one argument" do
      expect { Pizza.new }.to raise_error(ArgumentError)
    end


  end

  describe "#name" do
    it "gives the name of the pizza" do
      pizza.name.should eq('henry bike')
    end
  end

  describe "#required_bake_time" do
    it "has a required bake time in minutes" do
      pizza.required_bake_time.should eq(15)
    end
  end
end

describe Topping do
  let (:topping) {Topping.new('hot dog', 200) }

  describe "#initialize" do
    it "should create an instance of Topping" do
      topping.should be_an_instance_of Topping
    end

    it "requires an argument" do
      expect { Topping.new }.to raise_error(ArgumentError)
    end
  end

  describe "#name" do
    it "gives the name of the topping" do
      topping.name.should eq('hot dog')
    end
  end

   describe "#required_bake_time" do
    it "has a required bake time" do
      topping.required_bake_time.should eq(200)
    end
  end

end
