class CompanySerializer < ActiveModel::Serializer
  embed :ids
  attributes :id, :name, :description, :address, :city, :state, :phone, :email
  has_many :employees
  has_many :opportunities
  has_many :tasks
end
