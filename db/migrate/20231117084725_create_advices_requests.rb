class CreateAdvicesRequests < ActiveRecord::Migration[7.1]
  def change
    create_table :advices_requests do |t|
      t.references :patient, foreign_key: true
      t.text :message
      t.date :creation_date

      t.timestamps
    end
  end
end