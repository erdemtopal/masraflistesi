class DashboardController < ApplicationController
  before_action :authenticate_admin!
  before_action :set_user

  def index
  end

  private

  def set_user
      @admin = current_admin
  end

end
