class RecipesController < ApplicationController

  def index
    @recipes = Recipe.all
    @user = current_user
  end
end
