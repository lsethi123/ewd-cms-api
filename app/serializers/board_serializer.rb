class BoardSerializer < ActiveModel::Serializer
  attributes :id, :title, :description
  has_one :team
  has_many :todos
end
