FactoryBot.define do
  factory :reference_tables_position_type, class: 'ReferenceTables::PositionType' do
    name { Faker::Lorem.word }
    minimum_degree { Faker::Number.number(digits: 1) }
    maximum_degree { Faker::Number.number(digits: 2) }
  end

  factory :reference_tables_position_type_invalid, class: 'ReferenceTables::PositionType' do
    name { Faker::Lorem.word }
    minimum_degree { Faker::Number.number(digits: 2) }
    maximum_degree { Faker::Number.number(digits: 1) }
  end
end
