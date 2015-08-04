class TeamSerializer < ActiveModel::Serializer
  embed :ids
  attributes :id, :name
  has_many :users
end
