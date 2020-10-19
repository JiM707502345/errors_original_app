class AddLikesCountToErrors < ActiveRecord::Migration[6.0]
  def change
    add_column :errors, :likes_count, :integer
  end
end
