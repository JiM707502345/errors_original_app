FactoryBot.define do
  factory :error do
    industry_id { 2 }
    own_error_id { 2 }
    human_factor_id { 2 }
    in_my_head_id { 2 }
    frequency_id { 2 }
    try { '文字列を入力しました' }
    error { '文字列を入力しました' }
    learning { '文字列を入力しました' }
    next_action { '文字列を入力しました' }
    association :user
  end
end
