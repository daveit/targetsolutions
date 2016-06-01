class StocksproductsController < ApplicationController
  def index
    @stocks = Stock.where(active: true).order("name ASC")
  end
end
