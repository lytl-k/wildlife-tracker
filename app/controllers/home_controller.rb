class HomeController < ApplicationController
  def index
    @user = User.find_by_id(session[:current_user_id])
    unless @user
      flash[:notice] = 'Unauthorized, please login first'
      return redirect_to '/login'
    end
    @animals = Animal.all
    @regions = Region.all
    @sightings = filter
  end

  def filter
    sightings = @user.sightings.select do |sighting|
      sighting.region_id == params.dig(:home, :region_id).to_i
    end if params.dig(:home, :region_id)

    start_date = Time.parse(params.dig(:home, :start_date)) unless params.dig(:home, :start_date).blank?
    end_date = Time.parse(params.dig(:home, :end_date)) unless params.dig(:home, :end_date).blank?

    if start_date && end_date
      sightings = sightings.select do |sighting|
        (start_date..end_date) === sighting.created_at
      end
    end

    sightings || @user.sightings
  end

  def logout
    session[:current_user_id] = nil
    redirect_to '/login'
  end
end
