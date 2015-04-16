class AddFullnameUsernameClassExpToUser < ActiveRecord::Migration
  def change
    add_column :users, :fullname, :string
    add_column :users, :username, :string
    add_column :users, :class, :string
    add_column :users, :exp, :integer
  end
end
