class AddSeniorAccountantToUsers < ActiveRecord::Migration
  def change
    add_column :users, :senior_accountant, :boolean, default: false
  end
end
