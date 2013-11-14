class Photo < ActiveRecord::Base
belongs_to :user

mount_uploader :picture, PictureUploader

validates_presence_of :user_id
validates_presence_of :name
validates_presence_of :picture

def self.search(search)
	if search
		find(:all, :conditions => ['tags LIKE ?', "%#{search}%"])
	else
		find(:all)
	end
end

end
