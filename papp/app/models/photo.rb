class Photo < ActiveRecord::Base
belongs_to :user
has_many :tags, :dependent => :destroy 
mount_uploader :picture, PictureUploader

validates_presence_of :user_id
validates_presence_of :name
validates_presence_of :picture


end
