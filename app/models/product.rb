class Product < ActiveRecord::Base
  has_one :line_item
end
