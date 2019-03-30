# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

category_group = [
  {
    "Advertisting" => ["Advertisting (general)"],
    "Car & Truck Expenses" => [ "Car & Truck Expenses",
                                "Gas",
                                "Repairs",
                                "Vehicle Insurance",
                                "Vehicle Licensing",
  ],
    "Contractors" => ["Contractors (general)"],
    "Education and Training" => ["Education and Training (general)",],
    "Employee Benefits" => [ "Employee Benefits",
                             "Accident Insurance",
                             "Health Insurance",
                             "Life Insurance",
  ],
    "Meals & Entertainment" => [ "Meals & Entertainment (general)",
                                 "Entertainment",
                                 "Restaurants/Dining",
  ],
    "Office Expenses & Postages" => [ "Office Expenses & Postage (general)",
                                      "Hardware",
                                      "Office Supplies",
                                      "Packaging",
                                      "Postage",
                                      "Printing",
                                      "Shipping & Couriers",
                                      "Software",
                                      "Stationery",
  ],
    "Other Expenses" => [ "Other Expenses (general)",
                          "Bank Fees",
                          "Business Insurance",
                          "Commissions",
                          "Depreciation",
                          "Interest - Mortgage",
                          "Interest - Other",
                          "Online Services",
                          "Reference Materials",
                          "Repairs & Maintenance",
                          "Subscriptions/Dues/Memberships",
                          "Taxes & Licenses",
                          "Wages",
  ],
    "Personal" => [ "Personal (general)",],
    "Professional Services" => [ "Professional Services (general)",
                                 "Accounting",
                                 "Legal Fees",
  ],
    "Rent or Lease" => [ "Rent or Lease (general)",
                         "Equipment",
                         "Machinery",
                         "Office Space",
                         "Vehicles",
  ],
    "Supplies" => [ "Supplies (general)",],
    "Travel" => [ "Travel (general)",
                  "Airfare",
                  "Hotel/Lodging/Accommodation",
                  "Taxi & Parking",
  ],
    "Utilities" => [ "Utilities (general)",
                     "Gas & Electrical",
                     "Phone",
  ],
  }
]

category_group.each do |group|
  group.each do |category_group_name, category_name|
    category_group = ExpenseCategoryGroup.find_or_create_by(
      category_group_name: category_group_name
    )
    category_name.each do |category|
      ExpenseCategory.find_or_create_by!(
        category_name: category.to_s,
        expense_category_group_id: category_group.id
      )
    end
  end
end

vendors = ["Phone", "Acura"]

categories = ["Phone", "Repairs"]

#create two phone charges
2.times do
  vendor_id = Vendor.find_or_create_by(company_name: vendors[0]).id
  category_id = ExpenseCategory.find_by(category_name: categories[0]).id

  Expense.create(
    vendor_id: vendor_id,
    expense_category_id: category_id,
    debit_date: Time.now - rand(2592000),
    debit: 25.00,
    user_id: 1
  )
end

# create an auto charge
1.times do
  vendor_id = Vendor.find_or_create_by(company_name: vendors[1]).id
  category_id = ExpenseCategory.find_by(category_name: categories[1]).id

  Expense.create(
    vendor_id: vendor_id,
    expense_category_id: category_id,
    debit_date: Time.now - rand(2592000),
    debit: 300.00,
    user_id: 1
  )
end
