class TodoSerializer < ActiveModel::Serializer
  embed :ids
  attributes :id, :title, :user_id, :board_id
  has_many :checklists
end
