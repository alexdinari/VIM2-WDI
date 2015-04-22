class AddColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :email, :string
    add_column :users, :password_digest, :string
    add_column :users, :role, :string
    add_column :users, :specialty, :string
    add_column :users, :bio, :string
    add_column :users, :address, :string
    add_column :users, :price, :float
    add_column :users, :picture, :string
  end
end
