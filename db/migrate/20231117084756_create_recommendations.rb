class CreateRecommendations < ActiveRecord::Migration[7.1]
  def change
    create_table :recommendations do |t|
      t.references :advices_request, foreign_key: true
      t.text :message

      t.timestamps
    end
  end
end