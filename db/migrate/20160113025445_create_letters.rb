class CreateLetters < ActiveRecord::Migration
  def change
    create_table :letters do |t|
      t.string :personal_name
      t.string :company_name
      t.string :company_address
      t.string :mail
      t.string :tel
      t.text :msg

      t.timestamps null: false
    end
  end
end
