class AddOffersCollumns < ActiveRecord::Migration[5.2]
  def change
    add_column :offers, :status, :boolean
  end
end
