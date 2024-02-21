class Engine
  # [String] name of the engine
  attr_accessor :name

  # [Integer] volume of engine
  attr_accessor :cc

  # [String] type of engine 'diesel', 'gasoline'
  attr_accessor :type

  # [Boolean] turbo or not
  attr_accessor :turbo

  # [Integer] number of cylinders
  attr_accessor :cylinders

  # [Integer] CO2-emission in g/km
  attr_accessor :co2
end