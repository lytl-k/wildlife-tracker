class RegionsController < ApplicationController
  def index
    @regions = Region.all
  end

  def new
  end

  def edit
    @region = Region.find_by_id(params[:id])
  end

  def update
    Region.find_by_id(params[:id]).update(region_params)

    redirect_to '/regions'
  end

  def create
    region = Region.new(region_params)

    if region.valid?
      region.save
      redirect_to '/regions'
    else
      flash[:notice] = []
      region.errors.full_messages.each { |error| flash[:notice] << error }

      redirect_to '/regions/new'
    end
  end

  def delete
    Region.find_by_id(params[:id]).delete

    redirect_to '/regions'
  end

  private

  def region_params
    params.require(:region).permit(:name)
  end
end
