class Todo < ActiveRecord::Base
  belongs_to :user
  belongs_to :board
  has_many :checklists, :dependent => :destroy
end
