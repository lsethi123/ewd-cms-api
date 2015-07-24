class Company < ActiveRecord::Base
  belongs_to :user
  has_many :opportunities
  has_many :employees
  has_many :tasks
end
