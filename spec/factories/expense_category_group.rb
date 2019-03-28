FactoryBot.define do
  factory :expense_category_group do
    category_group_name { Faker::Commerce.department }
  end
end
