class IndexExpenseOperation
  attr_reader :expense

  def initialize(user_id)
    @expense = User.includes({
      expenses: [
        {expense_category_listing: :expense_category},
        {expense_category_listing: :expense_sub_category}
      ]
    }).find user_id
  end
end
