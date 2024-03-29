class EmployeeSerializer < ActiveModel::Serializer
  embed :ids
  attributes :id, :first_name, :last_name, :email, :role, :title, :phone, :company_id
  has_many :tasks
end
