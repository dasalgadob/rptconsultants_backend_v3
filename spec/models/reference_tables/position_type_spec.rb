require 'rails_helper'

RSpec.describe ReferenceTables::PositionType, type: :model do
  it 'is valid with all attributes' do
    expect(ReferenceTables::PositionType.new(name: Faker::Lorem.word, minimum_degree: 1, maximum_degree: 3)).to be_valid
  end

  it 'is not valid without name' do
    expect(ReferenceTables::PositionType.new( minimum_degree: 1, maximum_degree: 3)).not_to be_valid
  end

  it 'is not valid without minimum degree' do
    expect(ReferenceTables::PositionType.new( name: Faker::Lorem.word, maximum_degree: 3)).not_to be_valid
  end

  it 'is not valid without maximum degree' do
    expect(ReferenceTables::PositionType.new( name: Faker::Lorem.word, minimum_degree: 3)).not_to be_valid
  end

end
