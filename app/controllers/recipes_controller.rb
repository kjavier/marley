class RecipesController < ApplicationController
  def index
    @recipes = Recipe.paginate(index_permitted_params).load
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  private

  def index_permitted_params
    params.permit(:page, :per_page)
  end
end
