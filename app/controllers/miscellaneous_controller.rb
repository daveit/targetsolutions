class MiscellaneousController < ApplicationController
  before_action :set_miscellaneou, only: [:show, :edit, :update, :destroy]

  # GET /miscellaneous
  # GET /miscellaneous.json
  def index
    @miscellaneous = Miscellaneou.all
  end

  # GET /miscellaneous/1
  # GET /miscellaneous/1.json
  def show
  end

  # GET /miscellaneous/new
  def new
    @miscellaneou = Miscellaneou.new
  end

  # GET /miscellaneous/1/edit
  def edit
  end

  # POST /miscellaneous
  # POST /miscellaneous.json
  def create
    @miscellaneou = Miscellaneou.new(miscellaneou_params)

    respond_to do |format|
      if @miscellaneou.save
        format.html { redirect_to @miscellaneou, notice: 'Accessory was successfully created.' }
        format.json { render :show, status: :created, location: @miscellaneou }
      else
        format.html { render :new }
        format.json { render json: @miscellaneou.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /miscellaneous/1
  # PATCH/PUT /miscellaneous/1.json
  def update
    respond_to do |format|
      if @miscellaneou.update(miscellaneou_params)
        format.html { redirect_to @miscellaneou, notice: 'Accessory was successfully updated.' }
        format.json { render :show, status: :ok, location: @miscellaneou }
      else
        format.html { render :edit }
        format.json { render json: @miscellaneou.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /miscellaneous/1
  # DELETE /miscellaneous/1.json
  def destroy
    @miscellaneou.destroy
    respond_to do |format|
      format.html { redirect_to miscellaneous_url, notice: 'Accessory was successfully deleted.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_miscellaneou
      @miscellaneou = Miscellaneou.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def miscellaneou_params
      params.require(:miscellaneou).permit(:name, :model, :details, :active, :due_id, :make_id, :image, :qty, :price)
    end
end
