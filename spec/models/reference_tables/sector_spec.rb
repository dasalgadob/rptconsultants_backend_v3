require 'rails_helper'

RSpec.describe ReferenceTables::Sector, type: :model do
  it 'is valid with all the attributes' do
    rt = build(:reference_tables_sector)
    expect(rt).to be_valid
  end

  it 'is not valid without all the attributes' do
    rt = build(:reference_tables_sector_invalid)
    expect(rt).not_to be_valid
  end
end
