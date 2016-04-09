class User < ActiveRecord::Base
	# attr_accessor :invitation_instructions
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  	devise :invitable, :database_authenticatable, :registerable,
           :recoverable, :rememberable, :trackable, :validatable

	# def self.invite_partner!(attributes={}, invited_by=nil)
	# 	self.invite!(attributes, invited_by) do |invitable|
	#		invitable.invitation_instructions = :parther_invitation_instructions
	#	end
	# end

	#def self.invite_friend!(attributes={}, invited_by=nil)
	 #self.invite!(attributes, invited_by) do |invitable|
	 #  invitable.invitation_instructions = :friend_invitation_instructions
	 #end
	#end

  #ROLES = %i[admin partner manager senior_accountant junior_accountant owner head_of_accounting accounting_staff]
  #def role_symbols
  #	[role.to_sym]
  #end

  	has_many :companies
end
