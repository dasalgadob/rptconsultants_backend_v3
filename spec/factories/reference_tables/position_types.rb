FactoryBot.define do
  factory :reference_tables_position_type, class: 'ReferenceTables::PositionType' do
    name { "MyString" }
    minimum_degree { 1 }
    maximum_degree { 1 }
  end
end
