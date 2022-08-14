class DashboardController < ApplicationController
  before_action :authenticate_user!
  before_action :set_worker

  def index
    
  end

  private

  def set_worker
      @user = current_user
  end
end
