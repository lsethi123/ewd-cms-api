class ImageSlider < ActiveRecord::Base
  belongs_to :image
  belongs_to :slider
end
