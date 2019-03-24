class Expense < ApplicationRecord
  has_many :vendors
  has_many :expense_categories
  belongs_to :user
end
