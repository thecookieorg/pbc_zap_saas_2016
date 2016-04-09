class Company < ActiveRecord::Base
	belongs_to :user
	validates_presence_of :name, :address, :phone, :fax, :email, :website
end
