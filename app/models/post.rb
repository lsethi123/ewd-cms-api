class Post < ActiveRecord::Base
  has_many :tag_posts, :dependent => :destroy
  has_many :tags, :through => :tag_posts
  has_many :image_posts, :dependent => :destroy
  has_many :images, :through => :image_posts, :dependent => :destroy
end
