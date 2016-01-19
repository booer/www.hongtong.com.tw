class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :title
      t.text :desc
      t.boolean :lang, default: false, null: false

      t.timestamps null: false
    end
  end
end
