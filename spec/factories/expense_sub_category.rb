FactoryBot.define do
  factory :expense_sub_category do
   sub_category_name { Faker::Commerce.department }
  end
end
