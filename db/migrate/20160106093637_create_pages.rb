class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.text :page_cn
      t.text :page_en

      t.timestamps null: false
    end
  end
end
