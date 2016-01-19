class CreateSites < ActiveRecord::Migration
  def change
    create_table :sites do |t|
      t.string :tel
      t.string :address
      t.string :fax
      t.string :mail

      t.timestamps null: false
    end
  end
end
