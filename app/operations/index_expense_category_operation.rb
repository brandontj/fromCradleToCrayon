class IndexExpenseCategoryOperation
  attr_reader :categories

  def initialize
    @category_groups = ExpenseCategoryGroup
      .includes(:expense_categories)
      .select(:category_group_name, :id)
  end

  def results
    @category_groups.map do |category_group|
      {
        category_group.category_group_name =>
        category_group.expense_categories.map(&:category_name)
      }

    end.reduce(:merge)

  end
end
