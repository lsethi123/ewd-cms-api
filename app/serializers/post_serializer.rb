class PostSerializer < ActiveModel::Serializer
  embed :ids
  attributes :id, :title, :subtitle, :body, :published
  has_many :tags
end
