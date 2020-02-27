class AddEngineToListings < ActiveRecord::Migration[5.2]
  def change
    add_column :listings, :engine, :string
  end
end
