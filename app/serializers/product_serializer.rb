class ProductSerializer < ActiveModel::Serializer
  embed :ids
  attributes :id, :title, :description, :price, :image, :in_stock
end
