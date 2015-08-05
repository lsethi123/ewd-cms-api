class UserSerializer < ActiveModel::Serializer
  embed :ids
  attributes :id, :first_name, :last_name, :email, :team_id
  has_many :tasks
  has_many :todos
end
