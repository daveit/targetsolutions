class OpticsproductsController < ApplicationController
  def index
    @optics = Optic.where(active: true).order("name asc")
  end
end
