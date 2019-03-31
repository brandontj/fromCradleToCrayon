FactoryBot.define do
  factory :expense do
    debit_date { Faker::Date.between(7.days.ago, Date.today) }
    debit { Faker::Commerce.price }
    # binding.pry
    vendor
    expense_category
    user
  end
end
