class OrderSerializer < ActiveModel::Serializer
  attributes :id, :number, :total, :state
  belongs_to :user
end
