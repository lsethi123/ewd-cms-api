class Slider < ActiveRecord::Base
  belongs_to :page
  has_many :images
end
