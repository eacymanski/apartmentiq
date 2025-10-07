class UnitSerializer < ActiveModel::Serializer
  attributes :id, :name, :bedroom_count, :bathroom_count, :unit_size
end
