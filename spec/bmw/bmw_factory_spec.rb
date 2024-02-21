require 'spec_helper'

describe 'BMW Factory' do
  it 'builds by default a bmw 114d' do
    bmw_114d = FactoryBot.build(:bmw_factory)
    puts "bmw 114d specifications are #{bmw_114d.inspect}"
    expect(bmw_114d.model).to eq('114d')
    engine = bmw_114d.engine
    expect(engine.name).to eq('BMW TwinPower Turbo 3 Diesel')
    expect(engine.cc).to eq(1496)
    expect(engine.type).to eq('diesel')
    expect(engine.turbo).to eq(true)
    expect(engine.cylinders).to eq(3)
    expect(engine.co2).to eq(95)
    expect(bmw_114d.color).to eq('white')
    expect(bmw_114d.doors).to eq(3)
    expect(bmw_114d.leather).to be(false)
  end

  it 'can build a blue leather 5 doors bmw 114d as well' do
    bmw_114d = FactoryBot.build(:bmw_factory, color: 'blue', leather: true, doors: 5)
    engine = bmw_114d.engine
    expect(engine.name).to eq('BMW TwinPower Turbo 3 Diesel')
    expect(bmw_114d.color).to eq('blue')
    expect(bmw_114d.doors).to eq(5)
    expect(bmw_114d.leather).to be(true)
  end

  # Build a black, 5 doors bmw 116d which has a 'BMW TwinPower Turbo 3 Diesel EfficientDynamics' engine
  #   Specifications of  'BMW TwinPower Turbo 3 Diesel EfficientDynamics':
  #   1) Same as the 'BMW TwinPower Turbo 3 Diesel', but
  #   2) co2 = 89
  # Similar as above, verify the expected result.
  # T(est)D(riven)D(evelopment): Start with the specifications (tests)
  # Hint:
  # start with bmw_116d = FactoryBot.build(:bmw_factory)
  # The tests will fail
  # Adapt your code until they are green
end
