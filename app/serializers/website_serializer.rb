class WebsiteSerializer < ActiveModel::Serializer
  embed :ids
  attributes :id, :title, :address, :user_id
  has_many :pages
end
