class User < ActiveRecord::Base
	#enum access_level: { junior_accountant: 0, senior_accountant: 1, manager: 2, partner: 3}
    #after_initialize :set_default_access_level, :if => :new_record?

  	#def set_default_access_level
    #	self.access_level ||= :user
  	#end
	# attr_accessor :invitation_instructions
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  	devise :invitable, :database_authenticatable, :registerable,
           :recoverable, :rememberable, :trackable, :validatable

    # enum access_level: [:junior_accountant, :senior_accountant, :manager, :partner]

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
  	has_many :client_companies
end
