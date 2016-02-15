class OpticsController < ApplicationController
  before_action :set_optic, only: [:show, :edit, :update, :destroy]

  # GET /optics
  # GET /optics.json
  def index
    @optics = Optic.all
  end

  # GET /optics/1
  # GET /optics/1.json
  def show
  end

  # GET /optics/new
  def new
    @optic = Optic.new
  end

  # GET /optics/1/edit
  def edit
  end

  # POST /optics
  # POST /optics.json
  def create
    @optic = Optic.new(optic_params)

    respond_to do |format|
      if @optic.save
        format.html { redirect_to @optic, notice: 'Optic was successfully created.' }
        format.json { render :show, status: :created, location: @optic }
      else
        format.html { render :new }
        format.json { render json: @optic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /optics/1
  # PATCH/PUT /optics/1.json
  def update
    respond_to do |format|
      if @optic.update(optic_params)
        format.html { redirect_to @optic, notice: 'Optic was successfully updated.' }
        format.json { render :show, status: :ok, location: @optic }
      else
        format.html { render :edit }
        format.json { render json: @optic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /optics/1
  # DELETE /optics/1.json
  def destroy
    @optic.destroy
    respond_to do |format|
      format.html { redirect_to optics_url, notice: 'Optic was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_optic
      @optic = Optic.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def optic_params
      params.require(:optic).permit(:name, :model, :details, :active, :due_id, :make_id, :image, :mag, :price)
    end
end
