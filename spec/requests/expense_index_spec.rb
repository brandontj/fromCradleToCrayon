require 'rails_helper'
RSpec.describe 'Expense Index' do
  let(:result) { JSON.parse(response.body) }
  let!(:expense) { create :expense }

  before do
    # create(:expense)
    get '/expense'
  end

  context 'with results' do
    it 'returns a list of expenses' do
      expect(response.status).to eq 200
    end
  end

  context 'with no results' do

  end
end
