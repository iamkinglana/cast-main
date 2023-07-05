class User < ApplicationRecord
   # Devise authentication configuration
  #  devise :database_authenticatable, :registerable,
  #  :recoverable, :rememberable, :validatable

# Associations
has_many :casts
has_many :comments
has_many :likes
has_many :follows, foreign_key: "follower_id", dependent: :destroy
has_many :following, through: :follows, source: :followed
has_many :followers, through: :follows, source: :follower

# has_many :casts
# has_many :comments
# has_many :follows

# has_many :follower_relationships, foreign_key: :followed_user_id, class_name: 'Follow'
# has_many :followers, through: :follower_relationships, source: :follower

# has_many :followed_user_relationships, foreign_key: :follower_id, class_name: 'Follow'
# has_many :following, through: :followed_user_relationships, source: :followed_user


end
