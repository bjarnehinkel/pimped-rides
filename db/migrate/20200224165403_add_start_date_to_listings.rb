class AddStartDateToListings < ActiveRecord::Migration[5.2]
  def change
    add_column :listings, :start_date, :string
  end
end
