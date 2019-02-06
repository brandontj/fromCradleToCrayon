FactoryBot.define do
  factory :expense do
    debit_date { Faker::Date.between(7.days.ago, Date.today) }
    debit { Faker::Commerce.price }
    vendor
    expense_category_listing
    user
  end
end
