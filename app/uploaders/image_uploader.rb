# encoding: utf-8

class ImageUploader < CarrierWave::Uploader::Base

  # Include RMagick or MiniMagick support:
  # include CarrierWave::RMagick
  include CarrierWave::MiniMagick

  # Choose what kind of storage to use for this uploader:
  storage :file
  # storage :fog

  # Override the directory where uploaded files will be stored.
  # This is a sensible default for uploaders that are meant to be mounted:
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end
  #admin 小圖
  version :image_s do
    process :resize_to_fill => [50, 50]
  end
  #文章列表 小圖
  version :post_s do
    process :resize_to_fill => [360, 360]
  end
  #文章內頁 橫幅
  version :post_banner do
    process :resize_to_fill => [750, 285]
  end
  #產品列表 小圖
  version :product_list_s do
    process :resize_to_fill => [350, 350]
  end
  #產品輪播圖
  version :info_banner do
    process :resize_to_fill => [570, 437]
  end  
  #產品最終完成圖
  version :info_r do
    process :resize_to_fill => [263, 263]
  end
  # 靜態頁面輪播圖
  version :page do
    process :resize_to_fill => [555, 302]
  end


end