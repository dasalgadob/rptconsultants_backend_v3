require 'rails_helper'

RSpec.describe ReferenceTables::Degree, type: :model do
  it 'is valid with all attributes' do
    expect(ReferenceTables::Degree.new(number: 1, minimum: 91, medium: 100, maximum: 108, hay_degrees: 9,
    ggs_degrees: 4)).to be_valid
  end
  it 'is not valid without attributes' do
    degree = ReferenceTables::Degree.new
    expect(degree).not_to be_valid
  end
  it 'is not valid without a number' do
    expect(ReferenceTables::Degree.new(minimum: 91, medium: 100, maximum: 108, hay_degrees: 9, ggs_degrees: 4)).not_to be_valid
  end

  it 'is not valid without a minimum' do
    expect(ReferenceTables::Degree.new(number: 1, medium: 100, maximum: 108, hay_degrees: 9,  ggs_degrees: 4)).not_to be_valid
  end

  it 'is not valid without a medium' do
    expect(ReferenceTables::Degree.new(number: 1, minimum: 91, maximum: 108, hay_degrees: 9,  ggs_degrees: 4)).not_to be_valid
  end

  it 'is not valid without a maximum' do
    expect(ReferenceTables::Degree.new(number: 1, minimum: 91, medium: 100, hay_degrees: 9,  ggs_degrees: 4)).not_to be_valid
  end

  it 'is not valid with a negative degree' do
    expect(ReferenceTables::Degree.new(number: -1, minimum: 91, medium: 100, maximum: 200, hay_degrees: 9,  ggs_degrees: 4)).not_to be_valid
  end

  it 'is not valid with medidum bigger than minimum' do
    expect(ReferenceTables::Degree.new(number: 1, minimum: 115, medium: 100, maximum: 123, hay_degrees: 9,  ggs_degrees: 4)).not_to be_valid
  end

  it 'is not valid with meidum bigger than minimum' do
    expect(ReferenceTables::Degree.new(number: 1, minimum: 115, medium: 100, maximum: 80, hay_degrees: 9,  ggs_degrees: 4)).not_to be_valid
  end
end
