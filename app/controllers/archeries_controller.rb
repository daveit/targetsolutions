class ArcheriesController < ApplicationController
  before_action :set_archery, only: [:show, :edit, :update, :destroy]

  # GET /archeries
  # GET /archeries.json
  def index
    @archeries = Archery.all
  end

  # GET /archeries/1
  # GET /archeries/1.json
  def show
  end

  # GET /archeries/new
  def new
    @archery = Archery.new
  end

  # GET /archeries/1/edit
  def edit
  end

  # POST /archeries
  # POST /archeries.json
  def create
    @archery = Archery.new(archery_params)

    respond_to do |format|
      if @archery.save
        format.html { redirect_to @archery, notice: 'Archery was successfully created.' }
        format.json { render :show, status: :created, location: @archery }
      else
        format.html { render :new }
        format.json { render json: @archery.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /archeries/1
  # PATCH/PUT /archeries/1.json
  def update
    respond_to do |format|
      if @archery.update(archery_params)
        format.html { redirect_to @archery, notice: 'Archery was successfully updated.' }
        format.json { render :show, status: :ok, location: @archery }
      else
        format.html { render :edit }
        format.json { render json: @archery.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /archeries/1
  # DELETE /archeries/1.json
  def destroy
    @archery.destroy
    respond_to do |format|
      format.html { redirect_to archeries_url, notice: 'Archery was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_archery
      @archery = Archery.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def archery_params
      params.require(:archery).permit(:name, :model, :details, :active, :due_id, :make_id)
    end
end
