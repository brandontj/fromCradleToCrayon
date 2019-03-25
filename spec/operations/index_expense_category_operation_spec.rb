require 'rails_helper'

RSpec.describe IndexExpenseCategoryOperation do
  describe '#results' do
    context '' do
      let(:operation) { IndexExpenseCategoryOperation.new() }
      it 'returns nested list of results' do
        # require 'pry'; binding.pry
        expect(operation.results).to eq ''
      end
    end
  end
end
