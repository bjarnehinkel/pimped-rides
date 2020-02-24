class CreateListings < ActiveRecord::Migration[5.2]
  def change
    create_table :listings do |t|
      t.string :brand
      t.string :production_year
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
