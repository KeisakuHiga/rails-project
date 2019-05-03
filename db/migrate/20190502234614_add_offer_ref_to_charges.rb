class AddOfferRefToCharges < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key :charges, :offers
  end
end
