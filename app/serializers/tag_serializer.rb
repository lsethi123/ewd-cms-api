class TagSerializer < ActiveModel::Serializer
  embed :ids
  attributes :id, :name
end
