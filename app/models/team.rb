class Team < ActiveRecord::Base
  has_many :users
  has_many :companies
  has_many :boards
end
