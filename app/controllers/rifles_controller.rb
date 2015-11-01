class RiflesController < ApplicationController
  before_action :set_rifle, only: [:show, :edit, :update, :destroy]

  # GET /rifles
  # GET /rifles.json
  def index
    @rifles = Rifle.all
  end

  # GET /rifles/1
  # GET /rifles/1.json
  def show
  end

  # GET /rifles/new
  def new
    @rifle = Rifle.new
  end

  # GET /rifles/1/edit
  def edit
  end

  # POST /rifles
  # POST /rifles.json
  def create
    @rifle = Rifle.new(rifle_params)

    respond_to do |format|
      if @rifle.save
        format.html { redirect_to @rifle, notice: 'Rifle was successfully created.' }
        format.json { render :show, status: :created, location: @rifle }
      else
        format.html { render :new }
        format.json { render json: @rifle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rifles/1
  # PATCH/PUT /rifles/1.json
  def update
    respond_to do |format|
      if @rifle.update(rifle_params)
        format.html { redirect_to @rifle, notice: 'Rifle was successfully updated.' }
        format.json { render :show, status: :ok, location: @rifle }
      else
        format.html { render :edit }
        format.json { render json: @rifle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rifles/1
  # DELETE /rifles/1.json
  def destroy
    @rifle.destroy
    respond_to do |format|
      format.html { redirect_to rifles_url, notice: 'Rifle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rifle
      @rifle = Rifle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rifle_params
      params.require(:rifle).permit(:name, :model, :bore, :details, :active, :make_id, :due_id, :image)
    end
end
