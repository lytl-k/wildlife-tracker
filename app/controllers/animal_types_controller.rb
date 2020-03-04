class AnimalTypesController < ApplicationController
  def index
    @animal_types = AnimalType.all
  end

  def new
  end

  def edit
    @animal_type = AnimalType.find_by_id(params[:id])
  end

  def update
    AnimalType.find_by_id(params[:id]).update(animal_type_params)

    redirect_to '/animal_types'
  end

  def create
    animal_type = AnimalType.new(animal_type_params)

    if animal_type.valid?
      animal_type.save
      redirect_to '/animal_types'
    else
      flash[:notice] = []
      animal_type.errors.full_messages.each { |error| flash[:notice] << error }

      redirect_to '/animal_types/new'
    end
  end

  def delete
    AnimalType.find_by_id(params[:id]).delete

    redirect_to '/animal_types'
  end

  private

  def animal_type_params
    params.require(:animal_type).permit(:name, :description)
  end
end
