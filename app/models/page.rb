class Page < ActiveRecord::Base
  has_one :slider, :dependent => :destroy
  has_and_belongs_to_many :images
end
