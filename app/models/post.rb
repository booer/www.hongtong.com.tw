class Post < ActiveRecord::Base
	mount_uploader :image, ImageUploader
	validates_presence_of :title, :message =>'欄位不得為空'
	validates_presence_of :image, :message => '封面照不得為空'
end