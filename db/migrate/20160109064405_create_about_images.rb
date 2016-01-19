class CreateAboutImages < ActiveRecord::Migration
  def change
    create_table :about_images do |t|
      t.integer :page
      t.string :image

      t.timestamps null: false
    end
  end
end
