class ChecklistSerializer < ActiveModel::Serializer
  embed :ids
  attributes :id, :step, :description, :todo_id
end
