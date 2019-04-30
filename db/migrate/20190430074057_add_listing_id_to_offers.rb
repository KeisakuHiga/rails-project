class AddListingIdToOffers < ActiveRecord::Migration[5.2]
  def change
    add_column :offers, :listing_id, :integer
    add_foreign_key :offers, :listings
  end
end
