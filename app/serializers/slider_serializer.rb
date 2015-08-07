class SliderSerializer < ActiveModel::Serializer
  embed :ids
  attributes :id, :page_id
  has_many :images
end
