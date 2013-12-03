class Tag < ActiveRecord::Base
belongs_to :user
belongs_to :photo

validates_presence_of :photo_id

def self.search(search)
	find(:all, :conditions => ['tag_key LIKE :search OR tag_value LIKE :search', {:search => "%#{search}%"}])
end

end
