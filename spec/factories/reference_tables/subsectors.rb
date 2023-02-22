FactoryBot.define do
  factory :reference_tables_subsector, class: 'ReferenceTables::Subsector' do
    name { Faker::Lorem.word }
    association :reference_tables_sector, factory: :reference_tables_sector
  end
  factory :reference_tables_subsector_invalid, class: 'ReferenceTables::Sector' do
    name { nil }
  end
end
