class AddTrainerToUsers < ActiveRecord::Migration
  def change
    add_column :users, :trainer, :boolean
  end
end
