class SightingsController < ApplicationController
  def new
    @animals = Animal.all
    @regions = Region.all
    @user = User.find_by_id(session[:current_user_id])
  end

  def edit
    @user = User.find_by_id(session[:current_user_id])
    @animals = Animal.all
    @regions = Region.all
    @sighting = Sighting.find_by_id(params[:id])
  end

  def update
    Sighting.find_by_id(params[:id]).update(sighting_params)

    redirect_to '/home'
  end

  def create
    sighting = Sighting.new(sighting_params)

    if sighting.valid?
      sighting.save
      redirect_to '/home'
    else
      flash[:notice] = []
      sighting.errors.full_messages.each { |error| flash[:notice] << error }

      redirect_to '/sightings/new'
    end
  end

  def delete
    Sighting.find_by_id(params[:id]).delete

    redirect_to '/home'
  end

  private

  def sighting_params
    params.require(:sighting).permit(:animal_id, :user_id, :region_id, :latitude, :longitude)
  end
end
