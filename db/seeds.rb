# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#

# group = [
#   'Advertising',
#   'Car & Truck Expenses',
#   'Contractors',
#   'Education and Training',
#   'Employee Benefits',
#   'Meals & Entertainment',
#   'Office Expenses & Postages',
#   'Other Expenses',
#   'Personal',
#   'Professional Services',
#   'Rent or Lease',
#   'Supplies',
#   'Travel',
#   'Utilities'
# ]

# group.each do |group|
#   ExpenseCategoryGroup.find_or_create_by(category_group_name: group)
# end

category_group = [
  {
    "Advertisting" => ["Advertisting (general)"],
    "Car & Turck Expenses" => [ "Car & Turck Expenses",
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

