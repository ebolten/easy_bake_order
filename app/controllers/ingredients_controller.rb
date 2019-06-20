class IngredientsController < ApplicationController

    def new
        @ingredient = Ingredient.new
    end

    def create
        @ingredient = Ingredient.create(name:params['ingredient']['name'],menu_item_id:params['ingredient']['menu_item_id'])
        redirect_to menu_item_path(MenuItem.find(@ingredient.menu_item_id))
    end

end
