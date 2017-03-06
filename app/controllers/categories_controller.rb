class CategoriesController < ApplicationController

  def index
    @categories = Category.all
  end

  def show
    find_category
  end

  private

  def category_params
    params.require(:category).permit(:name)
  end

  def find_category
    @category = Category.find_by(id: params[:id])
  end

end
