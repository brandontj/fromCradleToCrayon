require 'rails_helper'

RSpec.describe IndexExpenseCategoryOperation do

  let! :expense_category do
    create :expense_category
  end


  let :expected_results do
    category = expense_category
    group = expense_category.expense_category_group
    [
      {
        id: group.id,
        name: group.category_group_name,
       expense_categories: [
          {
            id: category.id,
            name: category.category_name,
          }
        ]
      }
    ]
  end

  describe "results" do
    let(:operation) { IndexExpenseCategoryOperation.new() }
    it "returns nested list of results" do
      expect(operation.results).to eq expected_results
    end
  end
end
