class PostSerializer < ActiveModel::Serializer
  embed :ids
  attributes :id, :title, :subtitle, :body, :published
  has_many :tags, :through => :tag_posts
  has_many :images, :through => :image_products
end
