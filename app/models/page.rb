class Page < ActiveRecord::Base
  belongs_to :website
  has_one :slider, :dependent => :destroy
  has_and_belongs_to_many :images
end
