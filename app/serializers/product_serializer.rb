class ProductSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :price, :in_stock
end
