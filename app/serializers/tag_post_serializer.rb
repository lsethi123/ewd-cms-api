class TagPostSerializer < ActiveModel::Serializer
  attributes :id, :tag_id, :post_id
end
