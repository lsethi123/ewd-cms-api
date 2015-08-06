class Company < ActiveRecord::Base
  belongs_to :team
  has_many :opportunities, :dependent => :destroy
  has_many :employees, :dependent => :destroy
  has_many :tasks, :dependent => :destroy
end
