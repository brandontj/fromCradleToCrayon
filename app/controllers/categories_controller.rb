class CategoriesController < ApplicationController
  before_action :authenticate_user!

  def index
    @categories = IndexExpenseCategoryOperation.new().results
    # binding.pry
    respond_to do |format|
      format.html
      format.json { render json: { categories: @categories}, status: 200 }
    end
  end
end
