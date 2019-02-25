class IndexExpenseOperation
  attr_reader :expenses

  def initialize(user_id)
    @expenses = Expense.includes({
        expense_category_listing: :expense_category,
        expense_category_listing: :expense_sub_category
    }).includes(:vendor).where(user_id: user_id)
  end

  def results
    expenses.map do |line_item|
      {
        debit_date: line_item.debit_date,
        debit: line_item.debit,
        user_id: line_item.user_id,
        created_on: line_item.created_at,
        updated_on: line_item.updated_at,
        removed_on: line_item.deleted_at
      }
        .merge(category_info(line_item))
        .merge(vendor_info(line_item))
    end
  end

  private

  def vendor_info(line_item)
    vendor = line_item.vendor
    return {} unless vendor

    {
      company_name: vendor.company_name,
      company_description: vendor.company_description
    }
  end

  def category_info(line_item)
    category = line_item.expense_category_listing
    return {} unless category

    {
      parent_category: category.expense_category.category_name,
      sub_category: category.expense_sub_category.sub_category_name
    }
  end
end
