require 'rspec'
require_relative 'bike'


describe Pizza do
  let(:pizza) { Pizza.new('henry bike') }


  describe "#initialize" do
    it "takes a name for its first argument" do
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
      pizza.required_bake_time eq (15)

    end
  end


end

