class ExpensesController < ApplicationController
  before_action :authenticate_user!

  def index
    @expenses = IndexExpenseOperation.new(user_id).results
    respond_to do |format|
      format.html
      format.json { render json: { expenses: @expenses }, status: 200 }
    end
  end

  def new
    @expense = Expense.new
  end

  def create

  end

  private

  def user_id
    user_id = current_user.id
  end
end
