class AddUserToClientCompany < ActiveRecord::Migration
  def change
    add_reference :client_companies, :user, index: true, foreign_key: true
  end
end
