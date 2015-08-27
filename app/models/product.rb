class Product < ActiveRecord::Base
  has_many :category_products, :dependent => :destroy
  has_many :categories, :through => :category_products
  has_one :line_item, :dependent => :destroy
  has_many :image_products, :dependent => :destroy
  has_many :images, :through => :image_products, :dependent => :destroy
end
