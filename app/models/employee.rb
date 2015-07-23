class Employee < ActiveRecord::Base
  belongs_to :company
  has_many :tasks, :dependent => :destroy
end
