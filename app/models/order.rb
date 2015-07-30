class Order < ActiveRecord::Base
  belongs_to :user
  has_many :line_items
  has_one :shipping_address
  has_one :billing_address
end
