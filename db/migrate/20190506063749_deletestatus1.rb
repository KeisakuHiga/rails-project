class Deletestatus1 < ActiveRecord::Migration[5.2]
  def change
    remove_column :listings, :status
  end
end
