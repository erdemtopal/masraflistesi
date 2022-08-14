class DuyurusController < InheritedResources::Base
  before_action :authenticate_user!, only: %i[index show new create edit update destroy ]
  before_action :set_duyuru, only: %i[ show edit update destroy ]
  before_action :correct_user, only: %i[:show, :edit, :update, :destroy]

 



  

  private

    def set_duyuru
      @duyuru = Duyuru.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def duyuru_params
      params.require(:duyuru).permit(:user_id, :title, :body)
    end

    def correct_user
      @duyuru = current_user.duyurus.find_by(id: params[:id])
      redirect_to dashboard_index_path, notice: "Duyuruyu düzenlemeye yetkiniz yoktur" if @duyuru.nil?
    end

end
