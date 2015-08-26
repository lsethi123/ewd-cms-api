class Website < ActiveRecord::Base
  belongs_to :user
  has_many :pages, :dependent => :destroy
end
