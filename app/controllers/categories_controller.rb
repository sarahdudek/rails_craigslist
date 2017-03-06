class CategoriesController < ApplicationController

  def index
    @categories = Category.all
  end

  def show
    @category = Category.find_by(id: params[:id])
  end

  private

  def category_params
    params.require(:category).permit(:name)
  end

  def find_post
    @category = Category.find_by(id: params[:id])
  end

end
