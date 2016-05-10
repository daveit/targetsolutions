class RifleproductsController < ApplicationController

  def index
    @rifles = Rifle.where(active: true)
  end

  def show

  end
end
