class AddUsersFields < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :user_type, :boolean
    add_column :users, :mobile_number, :integer
    add_column :users, :name, :string
    add_column :users, :address, :string
    add_column :users, :dob, :datetime
    add_column :users, :bank_name, :string
    add_column :users, :account_number, :integer
    add_column :users, :bsb, :integer
    add_column :users, :driver_id, :integer
  end
end
