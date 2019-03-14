class Expenses < ApplicationController

  def index
    expenses = IndexExpenseOperation.new(user_id).results
    render json: { expenses: expenses }, status: 200
  end
end
