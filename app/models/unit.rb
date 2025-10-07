class Unit < ApplicationRecord
  belongs_to :property

  validates :name, uniqueness: true
  validates :bedroom_count, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 50 }
  validates :bathroom_count, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 50 }
  validates :unit_size, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 200000 }
end
