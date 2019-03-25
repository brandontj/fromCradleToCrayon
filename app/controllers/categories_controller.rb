class CategoriesController < ApplicationController
  before_action :authenticate_user!
  # attr_reader category

  def index
    @categories = IndexExpenseCategoryOperation.new().results
    respond_to do |format|
      format.html
      format.json { render json: @categories, status: 200 }
    end
  end
end
