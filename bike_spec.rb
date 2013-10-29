require 'rspec'
require_relative 'bike'


describe Pizza do
  let(:pizza) { Pizza.new('henry pizza') }


  describe "#initialize" do
    it "takes a name for its first argument" do
      pizza.should be_an_instance_of Pizza
    end

    it "requires one argument" do
      expect { Pizza.new }.to raise_error(ArgumentError)
    end
  end













end
