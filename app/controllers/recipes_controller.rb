class RecipesController < ApplicationController
    before_action :new_recipe, only: [:new, :create]
    before_action :find_recipe, only: [:show, :edit, :update]
    
    def new

    end

    def create
        @recipe.update(recipe_params)
        redirect_to recipe_path(@recipe)
    end

    def edit
    end

    def update
        @recipe.update(recipe_params)
        redirect_to recipe_path(@recipe)
    end

    private

    def recipe_params
        params.require(:recipe).permit(:name, ingredient_ids: [])
    end

    def new_recipe
        @recipe = Recipe.new
    end

    def find_recipe
        @recipe = Recipe.find(params[:id])
    end
end
