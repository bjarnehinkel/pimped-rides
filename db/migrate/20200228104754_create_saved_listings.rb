class CreateSavedListings < ActiveRecord::Migration[5.2]
  def change
    create_table :saved_listings do |t|
      t.references :listing, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
