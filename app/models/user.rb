class User < ApplicationRecord
	# Validations
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true, uniqueness: true, format: {with: VALID_EMAIL_REGEX}, allow_blank: false
	validates :username, presence: true, uniqueness: true
	validate :name, presence: true
	validates :avatar, presence: false
	validates :password, presence: true, uniqueness: true, length: { maximum: 16 }
	#   has_secure_password
	enum role: { basic: 0,
    admin: 1 }
end
