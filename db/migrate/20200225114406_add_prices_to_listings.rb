class AddPricesToListings < ActiveRecord::Migration[5.2]
  def change
    add_column :listings, :prices, :integer
  end
end
