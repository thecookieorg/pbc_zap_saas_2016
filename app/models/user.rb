class User < ActiveRecord::Base

# Include default devise modules. Others available are:
# :confirmable, :lockable, :timeoutable and :omniauthable
  devise :invitable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  acts_as_messageable

  def mailboxer_name
    self.name
  end

  def mailboxer_email(object)
    self.email
  end  

  has_many :companies
  has_many :client_companies
end
