class LineItemSerializer < ActiveModel::Serializer
  embed :ids
  attributes :id, :price, :quantity, :product_id, :order_id
end
