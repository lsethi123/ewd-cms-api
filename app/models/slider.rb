class Slider < ActiveRecord::Base
  belongs_to :page
  has_many :image_sliders
  has_many :images, :through => :image_sliders, :dependent => :destroy
end
