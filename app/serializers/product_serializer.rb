class ProductSerializer < ActiveModel::Serializer
  embed :ids
  attributes :id, :title, :description, :price, :in_stock
end
