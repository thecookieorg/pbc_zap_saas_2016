class RemovePhoneNumberFromUsers < ActiveRecord::Migration
  def change
  	remove_column :users, :phone_number
  end
end
