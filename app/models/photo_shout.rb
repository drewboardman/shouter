class PhotoShout < ActiveRecord::Base
	has_attached_file :image
	
	def index
		image_file_name
	end
end
