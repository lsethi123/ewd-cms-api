class Task < ActiveRecord::Base
  belongs_to :employee
  belongs_to :user
  belongs_to :company
end
