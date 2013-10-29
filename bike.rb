class Pizza
  attr_reader :name, :required_bake_time
  def initialize(name)
    @name = name
    @required_bake_time = 15
  end

end
