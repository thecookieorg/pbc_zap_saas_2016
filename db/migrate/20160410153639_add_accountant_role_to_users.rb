class AddAccountantRoleToUsers < ActiveRecord::Migration
  def change
    add_column :users, :accountant_role, :string
  end
end
