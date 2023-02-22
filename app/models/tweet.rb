class Tweet < ApplicationRecord
  has_one_attached :image
  belongs_to :user
  has_many :likes, dependent: :destroy, inverse_of: "tweet"
  belongs_to :replied_to, class_name: "Tweet", optional: true, counter_cache: :replies_count
  has_many :replies, class_name: "Tweet",
                                    foreign_key: "replied_to_id",
                                    dependent: :nullify,
                                    inverse_of: "replied_to"
   # Validates
  validates :body, presence: true, length: { maximum: 140 }
  validates :image, presence: false
end
