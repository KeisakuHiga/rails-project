class RemoveInterest < ActiveRecord::Migration[5.2]
  def change
    remove_column :offers, :interest
  end
end
