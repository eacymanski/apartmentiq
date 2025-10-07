require 'rails_helper'

RSpec.describe Property, type: :model do
  it { should validate_uniqueness_of(:name) }
  it { should validate_uniqueness_of(:address) }
  it { should validate_uniqueness_of(:website_url) }
  it { should validate_numericality_of(:year_built).is_greater_than(1600) }
  it { should validate_numericality_of(:year_built).is_less_than_or_equal_to(Date.current.year + 1) }
  it {should have_many(:units) }
end
