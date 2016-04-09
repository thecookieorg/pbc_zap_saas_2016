class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  #ROLES = %i[admin partner manager senior_accountant junior_accountant owner head_of_accounting accounting_staff]
  #def role_symbols
  #	[role.to_sym]
  #end

  has_many :companies
end
