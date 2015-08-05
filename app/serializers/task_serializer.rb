class TaskSerializer < ActiveModel::Serializer
  embed :ids
  attributes :id, :name, :description, :due_date, :employee_id, :user_id, :company_id
end
