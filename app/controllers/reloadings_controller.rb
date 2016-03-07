class ReloadingsController < ApplicationController
  before_action :set_reloading, only: [:show, :edit, :update, :destroy]

  # GET /reloadings
  # GET /reloadings.json
  def index
    @reloadings = Reloading.all
  end

  # GET /reloadings/1
  # GET /reloadings/1.json
  def show
  end

  # GET /reloadings/new
  def new
    @reloading = Reloading.new
  end

  # GET /reloadings/1/edit
  def edit
  end

  # POST /reloadings
  # POST /reloadings.json
  def create
    @reloading = Reloading.new(reloading_params)

    respond_to do |format|
      if @reloading.save
        format.html { redirect_to @reloading, notice: 'Reloading was successfully created.' }
        format.json { render :show, status: :created, location: @reloading }
      else
        format.html { render :new }
        format.json { render json: @reloading.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reloadings/1
  # PATCH/PUT /reloadings/1.json
  def update
    respond_to do |format|
      if @reloading.update(reloading_params)
        format.html { redirect_to @reloading, notice: 'Reloading was successfully updated.' }
        format.json { render :show, status: :ok, location: @reloading }
      else
        format.html { render :edit }
        format.json { render json: @reloading.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reloadings/1
  # DELETE /reloadings/1.json
  def destroy
    @reloading.destroy
    respond_to do |format|
      format.html { redirect_to reloadings_url, notice: 'Reloading was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reloading
      @reloading = Reloading.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reloading_params
      params.require(:reloading).permit(:name, :model, :quantity, :price, :details, :active, :due_id, :make_id)
    end
end
