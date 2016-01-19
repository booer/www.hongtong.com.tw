class Finalimg < ActiveRecord::Base
	mount_uploader :img, ImageUploader

	belongs_to :product
end