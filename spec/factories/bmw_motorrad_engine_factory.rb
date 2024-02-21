require 'factory_bot'

FactoryBot.define do
  factory :bmw_engine, class: Engine do
    turbo { true }

    factory :bmw_diesel_engine, class: Engine do
      type { 'diesel' }

      factory :bmw_turbo_3_diesel_engine do
        name { 'BMW TwinPower Turbo 3 Diesel' }
        cc  	{ 1496 }
        cylinders { 3 }
        co2 { 95 }
      end
    end

    factory :bmw_gasoline_engine, class: Engine do
      type { 'gasoline' }
      factory :bmw_turbo_3_gasoline_engine do
        name { 'BMW TwinPower Turbo 3 Gasoline' }
        cc  	{ 1496 }
        cylinders { 3 }
        co2 { 116 }
      end
    end
  end
end
