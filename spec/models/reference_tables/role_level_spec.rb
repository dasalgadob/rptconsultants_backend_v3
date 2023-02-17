require 'rails_helper'

RSpec.describe ReferenceTables::RoleLevel, type: :model do
  it 'is valid with all the attributes' do
    rt = build(:reference_tables_role_level)
    expect(rt).to be_valid
  end

  it 'is not valid without degrees association' do
    rl = build(:reference_tables_role_level)
    rl.reference_tables_degree = nil
    expect(rl).not_to be_valid
  end

  it 'is not valid without position_type association' do
    rl = build(:reference_tables_role_level)
    rl.reference_tables_position_type = nil
    expect(rl).not_to be_valid
  end
end
