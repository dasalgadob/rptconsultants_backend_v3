class ReferenceTables::Subsector < ApplicationRecord
  belongs_to :reference_tables_sector, class_name: 'ReferenceTables::Sector'
  validates :name, presence: true
end
