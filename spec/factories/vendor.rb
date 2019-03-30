FactoryBot.define do
  factory :vendor do
    company_name { Faker::Company.name }
    company_description { Faker::Company.industry }
  end
end
