class AddPhotoToRestaurants < ActiveRecord::Migration[5.2]
  def change
    add_column :listings, :photo_code, :string
  end
end
