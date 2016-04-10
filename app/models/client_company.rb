class ClientCompany < ActiveRecord::Base
	validates_presence_of :name, :address, :email, :phone, :fax, :website
	belongs_to :user
end
