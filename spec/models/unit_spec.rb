require 'rails_helper'

RSpec.describe Unit, type: :model do
  it { should validate_uniqueness_of(:name) }
  it { should validate_numericality_of(:bedroom_count).is_greater_than_or_equal_to(0) }
  it { should validate_numericality_of(:bedroom_count).is_less_than_or_equal_to(50) }
  it { should validate_numericality_of(:bathroom_count).is_greater_than_or_equal_to(0) }
  it { should validate_numericality_of(:bathroom_count).is_less_than_or_equal_to(50) }
  it { should validate_numericality_of(:unit_size).is_greater_than_or_equal_to(0) }
  it { should validate_numericality_of(:unit_size).is_less_than_or_equal_to(200000) }
  it {should belong_to(:property) }
end
