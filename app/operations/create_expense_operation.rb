class CreateExpenseOperation
  attr_reader :expense_params, :user_id, :expense

  def initialize(expense_params, user_id)
    @expense_params = expense_params
    @expense = Expense.new(
      debit_date: expense_params["debit_date"],
      user_id: user_id,
      expense_category_id: expense_params["expense_category_id"]
    )
  end

  def save
    vendor_id = get_vendor_id(expense_params["vendor"])
    debit_in_cents = convert_debit_to_cents(expense_params["debit"])
    expense.debit = debit_in_cents
    expense.vendor_id = vendor_id.id
    expense.save
  end

  private

  def convert_debit_to_cents(debit)
    debit.to_f.round(2) * 100
  end

  def get_vendor_id(vendor)
    Vendor.find_or_create_by(
      company_name: vendor
    )
  end
end
