class TagPostSerializer < ActiveModel::Serializer
  embed :ids
  attributes :id, :tag_id, :post_id
end
