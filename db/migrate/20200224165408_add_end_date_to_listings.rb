class AddEndDateToListings < ActiveRecord::Migration[5.2]
  def change
    add_column :listings, :end_date, :string
  end
end
