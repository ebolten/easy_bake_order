class MenuItemsController < ApplicationController

    def new
        @menu_item = MenuItem.new
    end

    def create
        @menu_item = MenuItem.create(name:params['menu_item']['name'],bakery_id:params['menu_item']['bakery_id'])
        redirect_to bakery_path(Bakery.find(@menu_item.bakery_id))
    end

    def show
        @menu_item = MenuItem.find(params['id'])
        @ingredient = Ingredient.new
    end

end
