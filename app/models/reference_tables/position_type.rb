class ReferenceTables::PositionType < ApplicationRecord
  validates :name, :minimum_degree, :maximum_degree, presence: true
  validates :name, uniqueness: true
  validates :minimum_degree, comparison: {less_than_or_equal_to: :maximum_degree}
end
