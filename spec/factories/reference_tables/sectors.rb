FactoryBot.define do
  factory :reference_tables_sector, class: 'ReferenceTables::Sector' do
    name { Faker::Lorem.word }
  end
  factory :reference_tables_sector_invalid, class: 'ReferenceTables::Sector' do
    name { nil }
  end
end
