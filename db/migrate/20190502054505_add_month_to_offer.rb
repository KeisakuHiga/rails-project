class AddMonthToOffer < ActiveRecord::Migration[5.2]
  def change
    add_column :offers, :months, :integer
  end
end
