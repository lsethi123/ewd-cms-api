class Page < ActiveRecord::Base
  has_one :slider
  has_and_belongs_to_many :images
end
