class BoardSerializer < ActiveModel::Serializer
  embed :ids
  attributes :id, :title, :description, :team_id
  has_many :todos
end
