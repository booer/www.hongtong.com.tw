class AboutImage < ActiveRecord::Base
	mount_uploader :image, ImageUploader
end
