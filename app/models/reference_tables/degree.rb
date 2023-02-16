class ReferenceTables::Degree < ApplicationRecord
  validates :number, uniqueness: true
  validates :number, :minimum, :medium, :maximum, :hay_degrees, :ggs_degrees, presence: true
  validates :number, comparison: { greater_than: 0}
  validates :medium, comparison: { greater_than_or_equal_to: :minimum}
  validates :maximum, comparison: { greater_than_or_equal_to: :medium}
end
