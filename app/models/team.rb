class Team < ActiveRecord::Base
  has_many :users
  has_many :companies, :dependent => :destroy
  has_many :boards, :dependent => :destroy
end
