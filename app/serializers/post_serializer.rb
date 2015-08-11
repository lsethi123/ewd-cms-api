class PostSerializer < ActiveModel::Serializer
  embed :ids
  attributes :id, :title, :subtitle, :image, :body, :published
  has_many :tags, :through => :tag_posts
end
