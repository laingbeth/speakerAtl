class User < ActiveRecord::Base

   before_save { self.email = email.downcase }

  #attr_accessor :email, :password, :password_confirmation

  validates_uniqueness_of :email
  # VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  # validates :email, presence: true, length: { maximum: 255 },
  #                   format: { with: VALID_EMAIL_REGEX },
  #                   uniqueness: true
  has_secure_password

end
