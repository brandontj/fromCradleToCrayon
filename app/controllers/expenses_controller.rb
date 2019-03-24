class ExpensesController < ApplicationController
  before_action :authenticate_user!
  attr_reader :user_id

  def index
    expenses = IndexExpenseOperation.new(user_id).results
    respond_to do |format|
      format.html { expenses }
      format.json { render json: { expenses: expenses }, status: 200 }
    end
  end

  private

  def user
    user_id = current_user.id
  end
end
