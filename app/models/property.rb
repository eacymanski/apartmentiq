class Property < ApplicationRecord
  has_many :units

  validates :name, uniqueness: true
  validates :address, uniqueness: true
  validates :website_url, uniqueness: true
  validates :year_built, numericality: { only_integer: true, greater_than: 1600, less_than_or_equal_to: Date.current.year + 1 }
end
