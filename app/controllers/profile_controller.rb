class ProfileController < ApplicationController
  before_action :authenticate_user!, except: [:show]
  before_action :set_profile

  def show

  end

  def edit
    redirect_to root_path, alert: "Yetkisiz Erişim.." unless permitted?
  end

  def update
    
  end

  private

  def set_profile
    @profile = Profile.find(params[:id])
  end

  def permitted?
    current_user == @profile.user
  end
end
