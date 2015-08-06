class Board < ActiveRecord::Base
  belongs_to :team
  has_many :todos, :dependent => :destroy
end
