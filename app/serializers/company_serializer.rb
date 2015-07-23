class CompanySerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :address, :city, :state, :phone, :email
  has_many :employees
  has_many :opportunities
end
