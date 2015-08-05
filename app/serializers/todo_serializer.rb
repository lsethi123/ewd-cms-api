class TodoSerializer < ActiveModel::Serializer
  attributes :id, :title
  has_one :user
  has_one :board
  has_many :checklists
end
