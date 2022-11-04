class HosesController < ApplicationController
  before_action :set_hose, only: %i[ show edit update destroy ]

  # GET /hoses or /hoses.json
  def index
    @hoses = Hose.all
  end

  # GET /hoses/1 or /hoses/1.json
  def show
  end

  # GET /hoses/new
  def new
    @hose = Hose.new
  end

  # GET /hoses/1/edit
  def edit
  end

  # POST /hoses or /hoses.json
  def create
    @hose = Hose.new(hose_params)

    respond_to do |format|
      if @hose.save
        format.html { redirect_to hose_url(@hose), notice: "Hose was successfully created." }
        format.json { render :show, status: :created, location: @hose }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @hose.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hoses/1 or /hoses/1.json
  def update
    respond_to do |format|
      if @hose.update(hose_params)
        format.html { redirect_to hose_url(@hose), notice: "Hose was successfully updated." }
        format.json { render :show, status: :ok, location: @hose }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @hose.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hoses/1 or /hoses/1.json
  def destroy
    @hose.destroy

    respond_to do |format|
      format.html { redirect_to hoses_url, notice: "Hose was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hose
      @hose = Hose.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def hose_params
      params.require(:hose).permit(:user_id, :price, :size)
    end
end
