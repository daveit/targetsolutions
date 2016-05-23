class BarrelproductsController < ApplicationController

    def index
      @barrels = Barrel.where(active: true).order("name ASC")
    end

    def show

    end

end
