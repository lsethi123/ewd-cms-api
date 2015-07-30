class OrderSerializer < ActiveModel::Serializer
  embed :ids
  attributes :id, :total, :state
  has_many :line_items
  has_one :shipping_address
  has_one :billing_address
end
