FactoryBot.define do
  factory :expense_category do
    category_name { Faker::Commerce.department }
  end
end
