require 'rails_helper'

RSpec.describe IndexExpenseOperation do

  let! :expense do
    create :expense
  end

  let :expected_results do
    category = expense.expense_category
    vendor = expense.vendor
    [
      {
        id: expense.id,
        debit_date: expense.debit_date,
        debit: expense.debit,
        user_id: expense.user_id,
        created_on: expense.created_at,
        updated_on: expense.updated_at,
        removed_on: expense.deleted_at,
        company_name: vendor.company_name,
        expense_category: category.category_name,
      }
    ]
  end
  let(:user_id) { expense.user_id }
  let(:operation) { IndexExpenseOperation.new(user_id) }

  describe '#results' do

    context 'user has no expenses record' do
      let(:empty_user_id) { create :user }
      let(:empty_operation) { IndexExpenseOperation.new(empty_user_id) }

      it 'returns an empty array' do
        expect(empty_operation.results).to eq []
      end
    end

    context 'user has expense records' do
      it 'returns results' do
        expect(operation.results).to eq expected_results
      end
    end
  end

  describe '#grand_total' do
    let(:grand_total) { expense.debit }

    context 'user has no expense record' do 
      let(:empty_user_id) { create :user }
      let(:empty_operation) { IndexExpenseOperation.new(empty_user_id) }

      it 'returns a zero' do
        expect(empty_operation.grand_total).to eq 0
      end
    end

    context 'user has expense records' do
      it 'returns the sum of the records' do
        expect(operation.grand_total).to eq expense.debit
      end
    end

  end
end
