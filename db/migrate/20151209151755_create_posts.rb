class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content

      t.boolean :status, default: false, null: false
      t.boolean :lang, default: false, null: false

      t.timestamps null: false
    end
  end
end
