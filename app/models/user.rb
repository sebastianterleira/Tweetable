class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
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
end
