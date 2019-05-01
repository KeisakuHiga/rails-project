class AddListingsStatusToListings < ActiveRecord::Migration[5.2]
  def change
    add_column :listings, :status, :boolean
  end
end
