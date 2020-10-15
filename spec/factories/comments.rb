FactoryBot.define do
  factory :comment do
    text { 'コメントする' }
    association :user
    association :error
  end
end
