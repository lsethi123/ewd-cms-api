class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :subtitle, :body, :published
end
