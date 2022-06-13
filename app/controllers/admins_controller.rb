class AdminsController < ApplicationController
  before_action :authenticate_admin!
  before_action :set_admin, only: %i[ show edit update destroy ]


  # GET /duyurus/1/edit
  def edit
  end

  # PATCH/PUT /duyurus/1 or /duyurus/1.json
  def update
    respond_to do |format|
      if @admin.update(admin_params)
        format.html { redirect_to dashboard_index_path, notice: "Admin was successfully updated." }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin
      @admin = current_admin
    end

    # Only allow a list of trusted parameters through.
    def admin_params
      params.require(:admin).permit(:name, :muhasebe_mail)
    end
end
