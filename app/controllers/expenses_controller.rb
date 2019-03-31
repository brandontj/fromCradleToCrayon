class ExpensesController < ApplicationController
  before_action :authenticate_user!
  attr_reader :user_id, :expenses

  def index
    @user = user
    @expenses = IndexExpenseOperation.new(user).results
    respond_to do |format|
      format.html
      format.json { render json: { expenses: @expenses }, status: 200 }
    end
  end

  private

  def user
    user_id = current_user.id
  end
end
