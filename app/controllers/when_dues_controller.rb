class WhenDuesController < ApplicationController
  before_action :set_when_due, only: [:show, :edit, :update, :destroy]

  # GET /when_dues
  # GET /when_dues.json
  def index
    @when_dues = WhenDue.all
  end

  # GET /when_dues/1
  # GET /when_dues/1.json
  def show
  end

  # GET /when_dues/new
  def new
    @when_due = WhenDue.new
  end

  # GET /when_dues/1/edit
  def edit
  end

  # POST /when_dues
  # POST /when_dues.json
  def create
    @when_due = WhenDue.new(when_due_params)

    respond_to do |format|
      if @when_due.save
        format.html { redirect_to @when_due, notice: 'When due was successfully created.' }
        format.json { render :show, status: :created, location: @when_due }
      else
        format.html { render :new }
        format.json { render json: @when_due.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /when_dues/1
  # PATCH/PUT /when_dues/1.json
  def update
    respond_to do |format|
      if @when_due.update(when_due_params)
        format.html { redirect_to @when_due, notice: 'When due was successfully updated.' }
        format.json { render :show, status: :ok, location: @when_due }
      else
        format.html { render :edit }
        format.json { render json: @when_due.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /when_dues/1
  # DELETE /when_dues/1.json
  def destroy
    @when_due.destroy
    respond_to do |format|
      format.html { redirect_to when_dues_url, notice: 'When due was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_when_due
      @when_due = WhenDue.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def when_due_params
      params.require(:when_due).permit(:name)
    end
end
