class CreateOffers < ActiveRecord::Migration[5.2]
  def change
    create_table :offers do |t|
      t.integer :interest
      t.text :description

      t.timestamps
    end
  end
end
