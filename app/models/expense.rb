class Expense < ApplicationRecord
  belongs_to :vendor
  belongs_to :expense_category
  belongs_to :user

  # def debit
  #   Money.new(super)
  # end
  #
  # def debit=(value)
  #   super(Money.convert_to_cents(value))
  # end
  # def debit=(value)
  #   amount = value.gsub(/\./,'').to_i
  #   self.debit = amount * 100
  # end
  #
  # private
  #
  # def remove_decimal(value)
  #   
  # end
end
