class RemoveAdminFromUsers < ActiveRecord::Migration
  def change
  	remove_column :users, :admin
  	remove_column :users, :partner
  	remove_column :users, :manager
  	remove_column :users, :senior_accountant
  	remove_column :users, :junior_accountant
  end
end
