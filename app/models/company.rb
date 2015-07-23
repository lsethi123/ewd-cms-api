class Company < ActiveRecord::Base
  has_many :opportunities
  has_many :employees
  has_many :tasks
end
