class CreateClientCompanies < ActiveRecord::Migration
  def change
    create_table :client_companies do |t|
      t.string :name
      t.string :address
      t.string :phone
      t.string :fax
      t.string :email
      t.string :website

      t.timestamps null: false
    end
  end
end
