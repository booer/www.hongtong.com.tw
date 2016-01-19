class Product < ActiveRecord::Base
	mount_uploader :imagea, ImageUploader
	mount_uploader :imageb, ImageUploader
	mount_uploader :imagec, ImageUploader
	mount_uploader :imaged, ImageUploader

	has_many :finalimgs, :dependent => :destroy
	accepts_nested_attributes_for :finalimgs, reject_if: :all_blank, allow_destroy: true

	validates_presence_of :pname, :pname_en, :message => '欄位不得為空'
	validates_presence_of :imagea, :message => '至少要上傳一張'
end