class CreatePatients < ActiveRecord::Migration[7.1]
  def change
    create_table :patients do |t|
      t.text :full_name
      t.date :date_birth
      t.decimal :phone
      t.text :email

      t.timestamps
    end
  end
end