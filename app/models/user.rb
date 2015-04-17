class User < ActiveRecord::Base

  validates_presence_of :username, :fullname, :email, :password, :password_confirmation, :class
  validates :username, uniqueness: { case_sensitive: false }
  validates :email, uniqueness: { case_sensitive: false }

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # before_save :ensure_authentication_token
  #
  # def ensure_authentication_token
  #   if authentication_token.blank?
  #     self.authentication_token = generate_authentication_token
  #   end
  # end
  #
  # private
  #
  # def generate_authentication_token
  #   loop do
  #     token = Devise.friendly_token
  #     break token unless User.where(authentication_token: token).first
  #   end
  # end
end
