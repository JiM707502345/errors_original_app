class CreateErrors < ActiveRecord::Migration[6.0]
  def change
    create_table :errors do |t|
      t.integer        :industry_id,          null: false
      t.integer        :own_error_id,         null: false
      t.integer        :human_factor_id,      null: false
      t.integer        :in_my_head_id
      t.integer        :frequency_id
      t.text           :try,                  null: false
      t.text           :error,                null: false
      t.text           :learning,             null: false
      t.text           :next_action,          null: false
      t.references     :user,                 null: false, foreign_key: true
      t.timestamps
    end
  end
end
