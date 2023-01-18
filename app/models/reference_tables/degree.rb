class ReferenceTables::Degree < ApplicationRecord
  validates :number, presence: true
  validates :minimum, presence: true
  validates :medium, presence: true
  validates :maximum, presence: true
end
