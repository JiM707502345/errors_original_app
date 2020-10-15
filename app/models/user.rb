class User < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :gender
  has_many :error, class_name: 'Error', foreign_key: 'error_id'
  has_many :comments, dependent: :destroy

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  with_options presence: true do
    validates :name
    validates :email
    validates :password
    validates :gender
    validates :age
  end
  validates :gender_id, numericality: { other_than: 1 }
end
