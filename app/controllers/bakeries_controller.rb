class BakeriesController < ApplicationController

    #bakery index page
    def index
        @bakeries = Bakery.all
    end

    #show existing bakery
    def show
        @bakery = Bakery.find(params['id'])
    end

end
