class ExpensesController < ApplicationController
  before_action :authenticate_user!

  def index
    @expenses = IndexExpenseOperation.new(user_id).results
    respond_to do |format|
      format.html
      format.json { render json: @expenses, status: 200 }
    end
  end

  def new
    @expense = Expense.new
  end

  def create
    @expense = CreateExpenseOperation.new(expense_params, user_id)
    respond_to do |format|
      if @expense.save
        format.html { redirect_to action: "index", notice: 'Expense saved' }
        format.json { render :index, status: 200 }
      else
        format.html { render :new }
        format.json { render json: expense.errors, status: :unprocessable_entity }
      end
    end


  end

  private

  def expense_params
    params.require(
      :expense,
    ).permit(
      :expense_category_id,
      :debit_date,
      :vendor,
      :debit
    )
  end

  def user_id
    user_id = current_user.id
  end
end
