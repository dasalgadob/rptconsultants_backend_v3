FactoryBot.define do
  factory :random_degree, class: 'ReferenceTables::Degree' do
    number { Faker::Number.between(from: 1, to: 20) }
    minimum { Faker::Number.number(digits: 1) }
    medium { Faker::Number.number(digits: 2) }
    maximum { Faker::Number.number(digits: 3) }
    hay_degrees { Faker::Number.between(from: 1, to: 20) }
    ggs_degrees { Faker::Number.between(from: 1, to: 20) }
  end

  factory :random_degree_invalid, class: 'ReferenceTables::Degree' do
    number { nil }
    minimum { Faker::Number.number(digits: 3) }
    medium { Faker::Number.number(digits: 3) }
    maximum { Faker::Number.number(digits: 3) }
    hay_degrees { Faker::Number.between(from: 1, to: 20) }
    ggs_degrees { Faker::Number.between(from: 1, to: 20) }
  end
end
