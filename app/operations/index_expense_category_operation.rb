class IndexExpenseCategoryOperation
  attr_reader :categories

  def initialize
    @category_groups = ExpenseCategoryGroup
      .includes(:expense_categories)
      .select(:category_group_name, :id)
  end

  def results
    @category_groups.map do |category_group|
      { id: category_group.id,
        :name => category_group.category_group_name,
        :expense_categories => category_group.expense_categories.pluck(
          :id, :category_name
        ).map {|id, category_name| {id: id, name: category_name}} }
    end
  end
end
