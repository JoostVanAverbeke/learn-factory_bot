require 'factory_bot'

FactoryBot.define do
  factory :bmw_factory, class: Car do
    model { '114d' }
    engine { FactoryBot.build(:bmw_turbo_3_diesel_engine) }
    color { 'white' }
    doors { 3 }
    leather { false }
  end
end
