class ProfilesController < ApplicationController
  before_action :set_profile, only: [:show, :edit, :update]

  def index
    @profiles = Profile.all
  end

  def show
    @sync_requests = @profile.sync_requests
  end

  def edit
  end
  
  def update
    if @profile.update(profile_params)
      redirect_to @profile, notice: 'The profile has been successfully updated manually.'
    else
      render :edit
    end
  end
  
  def autoupdate
    @profile = Profile.find(params[:format])
    QueryCreatorService.new(@profile).perform
    redirect_to @profile, notice: 'A profile update request has been successfully created.'
  end

  private

  def set_profile
    @profile = Profile.find(params[:id])
  end

  def profile_params
    params.require(:profile).permit(:name, :surname, :city, :company)
  end
end
