class AddFkToOffers < ActiveRecord::Migration[5.2]
  def change
    add_column :offers, :user_id, :integer
    add_foreign_key :offers, :users
  end
end
