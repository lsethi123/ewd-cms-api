class Image < ActiveRecord::Base
  has_and_belongs_to_many :pages
  has_many :image_sliders
  has_many :sliders, :through => :image_sliders
  has_many :image_products
  has_many :products, :through => :image_products
  has_attached_file :file, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  validates_attachment :file, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }
end
