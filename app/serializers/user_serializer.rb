class UserSerializer < ActiveModel::Serializer
  embed :ids
  attributes :id, :first_name, :last_name, :email
  has_many :companies
  has_many :tasks
end
