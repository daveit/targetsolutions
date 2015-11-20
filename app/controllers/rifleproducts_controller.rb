class RifleproductsController < ApplicationController
  def index
    @rifles = Rifle.all
  end
  def show

  end
end
