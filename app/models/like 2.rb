class Like < ApplicationRecord
  belongs_to :error, counter_cache: :likes_count
  belongs_to :user
end