class AddColumnToOffers < ActiveRecord::Migration[5.2]
  def change
    add_column :offers, :status, :boolean, default: false
  end
end
