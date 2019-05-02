class CreateCharges < ActiveRecord::Migration[5.2]
  def change
    create_table :charges do |t|
      t.float :charge_amount
      t.integer :offer_id

      t.timestamps
    end
  end
end
