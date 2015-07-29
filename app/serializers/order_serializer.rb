class OrderSerializer < ActiveModel::Serializer
  embed :ids
  attributes :id, :number, :total, :state
  has_many :line_items
end
