class AddInterestFloat < ActiveRecord::Migration[5.2]
  def change
    add_column :offers, :interest, :float
  end
end
