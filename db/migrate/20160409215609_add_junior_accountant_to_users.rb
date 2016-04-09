class AddJuniorAccountantToUsers < ActiveRecord::Migration
  def change
    add_column :users, :junior_accountant, :boolean, default: true
  end
end
