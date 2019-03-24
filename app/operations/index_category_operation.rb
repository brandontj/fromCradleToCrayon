class IndexCategoryOperation
  attr_reader :categories

  def initialize
    @categories = ExpenseCategoryListing.includes({
      :expense_category,
      :expense_sub_category,
    })
  end

  def results
    categories.map do |category|
      {
        parent_category: category.expense_category.category_name
      }.merge(child_category(category))
    end
  end

  private

  def child_category(category)
    child = category.expense_sub_category.sub_category_name
    return {} unless child

  end
end
