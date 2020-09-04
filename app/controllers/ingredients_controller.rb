class IngredientsController < ApplicationController
    before_action :new_ingredient, only: [:new, :create]
    before_action :find_ingredient, only: [:show, :edit, :update]
    def new

    end

    def create
        @ingredient.update(ingredient_params)
        redirect_to ingredient_path(@ingredient)
    end

    def edit
    end

    def update
        @ingredient.update(ingredient_params)
        redirect_to ingredient_path(@ingredient)
    end

    private

    def ingredient_params
        params.require(:ingredient).permit(:name)
    end

    def new_ingredient
        @ingredient = Ingredient.new
    end

    def find_ingredient
        @ingredient = Ingredient.find(params[:id])
    end
end
