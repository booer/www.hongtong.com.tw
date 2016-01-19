class CreateFinalimgs < ActiveRecord::Migration
  def change
    create_table :finalimgs do |t|
      t.integer :product_id
      t.string :img
      t.string :title
      t.text :desc
      t.text :detail
      t.text :etc
      t.belongs_to :product, index: true

      t.timestamps null: false
    end
  end
end
