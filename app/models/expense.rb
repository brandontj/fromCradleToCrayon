class Expense < ApplicationRecord
  belongs_to :vendor
  belongs_to :expense_category_listing
  belongs_to :user
end
