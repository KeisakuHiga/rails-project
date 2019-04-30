class AddTitleAndAmountToListings < ActiveRecord::Migration[5.2]
  def change
    add_column :listings, :amount, :integer
  end
end
