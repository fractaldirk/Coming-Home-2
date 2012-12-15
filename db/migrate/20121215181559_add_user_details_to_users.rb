class AddUserDetailsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :user_office, :integer
    add_column :users, :user_name, :string
  end
end
