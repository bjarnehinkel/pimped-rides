class AddHorsepowerToListings < ActiveRecord::Migration[5.2]
  def change
    add_column :listings, :horsepower, :integer
  end
end
