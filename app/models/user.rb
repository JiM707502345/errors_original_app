class User < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :gender
  has_many :error, class_name: 'Error', foreign_key: 'error_id', dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :liked_errors, through: :likes, source: :error
  has_many :comments, dependent: :destroy
  has_many :relationships, foreign_key: 'user_id', dependent: :destroy
  has_many :followings, through: :relationships, source: :follow
  has_many :passive_relationships, class_name: 'Relationship', foreign_key: 'follow_id', dependent: :destroy
  has_many :followers, through: :passive_relationships, source: :user
  # foregin_key = 入口みたいな
  # source = 出口みたいな

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  with_options presence: true do
    validates :name
    validates :email
    validates :password
    validates :gender
    validates :age, numericality: { only_integer: true }
  end
  validates :gender_id, numericality: { other_than: 1 }

  def following?(other_user)
    followings.include?(other_user)
  end

  def follow(other_user)
    relationships.find_or_create_by(follow_id: other_user.id) unless self == other_user
  end

  def unfollow(other_user)
    relationship = relationships.find_by(follow_id: other_user.id)
    relationship.destroy if relationship
  end
end
