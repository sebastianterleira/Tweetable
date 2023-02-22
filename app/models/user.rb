class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :omniauthable
	has_one_attached :avatar

	#Associations
	has_many :tweets, dependent: :destroy
    has_many :likes, dependent: :destroy, inverse_of: "user"
    has_many :liked_tweets, through: :likes, source: :tweet
	# Validations
	validates :username, presence: true, uniqueness: true
	# validate :name, presence: true
	validates :avatar, presence: false
	#   has_secure_password
	enum role: { admin: 0,
    user: 1 }

	def self.from_omniauth(auth_hash)
		where(provider: auth_hash.provider, uid: auth_hash.uid).first_or_create do |user|
		  user.provider = auth_hash.provider
		  user.uid = auth_hash.uid
		  user.username = auth_hash.info.nickname
		  user.email = auth_hash.info.email
		  user.password = Devise.friendly_token[0, 20]
		end
	end
end