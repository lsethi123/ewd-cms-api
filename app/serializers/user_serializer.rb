class UserSerializer < ActiveModel::Serializer
  embed :ids
  attributes :id, :first_name, :last_name, :email, :avatar, :team_id
  has_many :tasks
end
