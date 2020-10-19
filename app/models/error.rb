class Error < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :industry
  belongs_to_active_hash :own_error
  belongs_to_active_hash :human_factor
  belongs_to_active_hash :in_my_head
  belongs_to_active_hash :frequency
  belongs_to :user
  has_many :likes, dependent: :destroy
  has_many :liking_users, through: :likes, source: :user
  has_many :comments, dependent: :destroy

  with_options presence: true do
    validates :industry
    validates :own_error
    validates :human_factor
    validates :try
    validates :error
    validates :learning
    validates :next_action
    validates :user_id
  end
  with_options numericality: { other_than: 1 } do
    validates :industry_id
    validates :own_error_id
    validates :human_factor_id
  end

  def self.search(search)
    if search != ''
      Error.where('error LIKE(?)', "%#{search}%")
    else
      Error.includes(:user).order('created_at DESC')
    end
  end
end
