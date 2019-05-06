class Createstatus1 < ActiveRecord::Migration[5.2]
  def change
    add_column :listings, :status, :boolean, default: false
  end
end
