class BakeriesController < ApplicationController

    #bakery index page
    def index
        @bakeries = Bakery.all
    end

    #show existing bakery
    def show
        @bakery = Bakery.find(params['id'])
        @menu_item = MenuItem.new
    end

    def new
        @bakery = Bakery.new
    end

    def create
        @bakery = Bakery.create(name:params['bakery']['name'],address:params['bakery']['address'])
        redirect_to bakery_path(@bakery)
    end

end
