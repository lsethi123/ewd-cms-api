class Product < ActiveRecord::Base
  has_many :category_products
  has_many :categories, :through => :category_products
  has_one :line_item
  has_many :image_products
  has_many :images, :through => :image_products
end
