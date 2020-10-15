FactoryBot.define do
  factory :user do
    name { 'お名前くん' }
    email { 'ooo@ooo' }
    password { 'oooooo' }
    gender_id { 5 }
    age { '3' }
  end
end
