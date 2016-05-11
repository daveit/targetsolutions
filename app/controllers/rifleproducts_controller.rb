class RifleproductsController < ApplicationController

  def index
    @rifles = Rifle.where(active: true).order("name ASC")
  end

  def show

  end
end
