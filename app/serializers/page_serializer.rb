class PageSerializer < ActiveModel::Serializer
  embed :ids
  attributes :id, :title, :website_id
  has_one :slider
  has_many :images
end
