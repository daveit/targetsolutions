class RiflesvController < ApplicationController

  # GET /riflesv
  def index
    @riflesv = Rifle.all
  end

  # GET /riflesv/1
  def show
  end

end
