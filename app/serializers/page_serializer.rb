class PageSerializer < ActiveModel::Serializer
  embed :ids
  attributes :id, :title
  has_one :slider
  has_many :images
end
