class Slider < ActiveRecord::Base
  belongs_to :page
  has_and_belongs_to_many :images
end
