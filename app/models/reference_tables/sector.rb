class ReferenceTables::Sector < ApplicationRecord
  validates :name, presence: true

  has_many :reference_tables_subsector, class_name: 'ReferenceTables::Subsector',
                                        foreign_key: :reference_tables_sector_id,
                                        dependent: :destroy
end
