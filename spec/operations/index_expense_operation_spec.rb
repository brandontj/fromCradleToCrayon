require 'rails_helper'

RSpec.describe IndexExpenseOperation do

  let! :expense do
    create :expense
  end
  describe '#initialize' do
    it 'sets expense attr reader' do
      ieo = IndexExpenseOperation.new(expense.user_id)

      expect(ieo.user_id).to eq expense.user_id
    end
  end
  # describe '#results' do
  #
  # end
end
