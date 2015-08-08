class Image < ActiveRecord::Base
  has_and_belongs_to_many :pages
  has_and_belongs_to_many :sliders
  has_attached_file :file, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  validates_attachment :file, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }
end
