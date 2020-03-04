class AnimalsController < ApplicationController
  def index
    @animals = Animal.all
  end

  def new
    @animal_types = AnimalType.all
  end

  def edit
    @animal_types = AnimalType.all
    @animal = Animal.find_by_id(params[:id])
  end

  def update
    Animal.find_by_id(params[:id]).update(animal_params)

    redirect_to '/animals'
  end

  def create
    animal = Animal.new(animal_params)

    if animal.valid?
      animal.save
      redirect_to '/animals'
    else
      flash[:notice] = []
      animal.errors.full_messages.each { |error| flash[:notice] << error }

      redirect_to '/animals/new'
    end
  end

  def delete
    Animal.find_by_id(params[:id]).delete

    redirect_to '/animals'
  end

  private

  def animal_params
    params.require(:animal).permit(:name, :animal_type_id)
  end
end
