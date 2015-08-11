class ProductSerializer < ActiveModel::Serializer
  embed :ids
  attributes :id, :title, :description, :price, :in_stock
  has_many :categories, :through => :category_products
  has_many :images, :through => :image_products
end
