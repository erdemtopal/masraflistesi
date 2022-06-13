class DuyurusController < ApplicationController
  before_action :authenticate_admin!, only: %i[ edit update destroy ]
  before_action :set_duyuru, only: %i[ show edit update destroy ]

  #correct_admin diye bir fonksiyon yazmamız gerekebilir. 

  # GET /duyurus or /duyurus.json
  def index
    @duyurus = Duyuru.all
  end

  # GET /duyurus/1 or /duyurus/1.json
  def show
  end

  # GET /duyurus/new
  def new
    @duyuru = Duyuru.new
  end

  # GET /duyurus/1/edit
  def edit
  end

  # POST /duyurus or /duyurus.json
  def create
    @duyuru = Duyuru.new(duyuru_params)

    respond_to do |format|
      if @duyuru.save
        format.html { redirect_to duyuru_url(@duyuru), notice: "Duyuru was successfully created." }
        format.json { render :show, status: :created, location: @duyuru }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @duyuru.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /duyurus/1 or /duyurus/1.json
  def update
    respond_to do |format|
      if @duyuru.update(duyuru_params)
        format.html { redirect_to duyuru_url(@duyuru), notice: "Duyuru was successfully updated." }
        format.json { render :show, status: :ok, location: @duyuru }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @duyuru.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /duyurus/1 or /duyurus/1.json
  def destroy
    @duyuru.destroy

    respond_to do |format|
      format.html { redirect_to duyurus_url, notice: "Duyuru was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_duyuru
      @duyuru = Duyuru.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def duyuru_params
      params.require(:duyuru).permit(:admin_id, :title, :body)
    end
end
