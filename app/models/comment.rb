class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :error

  validates :text, presence: true
end
