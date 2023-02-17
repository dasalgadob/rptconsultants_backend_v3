class ReferenceTables::RoleLevel < ApplicationRecord
  belongs_to :reference_tables_degree, class_name: 'ReferenceTables::Degree'
  belongs_to :reference_tables_position_type, class_name: 'ReferenceTables::PositionType'
  validates :name, presence: true
end
