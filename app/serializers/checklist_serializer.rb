class ChecklistSerializer < ActiveModel::Serializer
  attributes :id, :description
  has_one :todo
end
