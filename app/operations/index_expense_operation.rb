class IndexExpenseOperation
  attr_reader :expenses

  def initialize(user_id)
    @expenses = Expense.includes(
      :expense_category,
      :vendor
    ).where(user_id: user_id)
  end

  def results
    expenses.map do |line_item|
      {
        id: line_item.id,
        debit_date: line_item.debit_date,
        debit: convert_from_cents(line_item.debit),
        user_id: line_item.user_id,
        created_on: line_item.created_at,
        updated_on: line_item.updated_at,
        removed_on: line_item.deleted_at
      }
        .merge(category_info(line_item))
        .merge(vendor_info(line_item))
    end
  end

  def grand_total
   expense.sum(:debit)
  end

  private

  def vendor_info(line_item)
    vendor = line_item.vendor
    return {} unless vendor

    {
      company_name: vendor.company_name,
    }
  end

  def category_info(line_item)
    category = line_item.expense_category
    return {} unless category

    {
      expense_category: category.category_name,
    }
  end

  def convert_from_cents(cents)
    cents.to_f / 100
  end
end
