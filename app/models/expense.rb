class Expense < ApplicationRecord
  belongs_to :vendor_id
  belongs_to :expense_category_listing_id
end
