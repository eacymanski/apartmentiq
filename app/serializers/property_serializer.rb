class PropertySerializer < ActiveModel::Serializer
  attributes :id, :name, :address, :website_url, :year_built
  has_many :units
end
