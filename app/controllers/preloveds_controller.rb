class PrelovedsController < ApplicationController
  before_action :set_preloved, only: [:show, :edit, :update, :destroy]

  # GET /preloveds
  # GET /preloveds.json
  def index
    @preloveds = Preloved.all
  end

  # GET /preloveds/1
  # GET /preloveds/1.json
  def show
  end

  # GET /preloveds/new
  def new
    @preloved = Preloved.new
  end

  # GET /preloveds/1/edit
  def edit
  end

  # POST /preloveds
  # POST /preloveds.json
  def create
    @preloved = Preloved.new(preloved_params)

    respond_to do |format|
      if @preloved.save
        format.html { redirect_to @preloved, notice: 'Preloved was successfully created.' }
        format.json { render :show, status: :created, location: @preloved }
      else
        format.html { render :new }
        format.json { render json: @preloved.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /preloveds/1
  # PATCH/PUT /preloveds/1.json
  def update
    respond_to do |format|
      if @preloved.update(preloved_params)
        format.html { redirect_to @preloved, notice: 'Preloved was successfully updated.' }
        format.json { render :show, status: :ok, location: @preloved }
      else
        format.html { render :edit }
        format.json { render json: @preloved.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /preloveds/1
  # DELETE /preloveds/1.json
  def destroy
    @preloved.destroy
    respond_to do |format|
      format.html { redirect_to preloveds_url, notice: 'Preloved was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_preloved
      @preloved = Preloved.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def preloved_params
      params.require(:preloved).permit(:name, :model, :price, :details, :active, :make_id)
    end
end
