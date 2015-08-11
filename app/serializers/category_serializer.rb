class CategorySerializer < ActiveModel::Serializer
  embed :ids
  attributes :id, :name
end
