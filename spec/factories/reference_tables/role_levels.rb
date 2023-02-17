FactoryBot.define do
  factory :reference_tables_role_level, class: 'ReferenceTables::RoleLevel' do
    association :reference_tables_degree, factory: :random_degree
    name { Faker::Lorem.word }
    association :reference_tables_position_type, factory: :reference_tables_position_type
  end

  factory :reference_tables_role_level_invalid, class: 'ReferenceTables::RoleLevel' do
    association :reference_tables_degree, factory: :random_degree
    name { nil }
    association :reference_tables_position_type, factory: :reference_tables_position_type
  end
end
