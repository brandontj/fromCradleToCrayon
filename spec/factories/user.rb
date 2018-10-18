FactoryBot.define do
  factory :user do
    email 'test@anywhere.com'
    first_name { SecureRandom.hex }
    last_name { SecureRandom.hex }
    user_name { SecureRandom.hex }
    password '123456'
    password_confirmation '123456'
  end
end
