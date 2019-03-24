class CategoriesController < ApplicationController
  before_action :authenticate_user!

  def index
    categories = IndexCategoryOperation.results

  end
end
