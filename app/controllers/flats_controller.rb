class FlatsController < ApplicationController
  def index
    @flats = Flat.all
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new(flat_params)

    if @flat.save
      redirect_to flats_path, notice: 'Flat was successfully created.'
    else
      render :new
    end
  end

  private

  def flat_params
    # Define the permitted parameters for creating a new flat
    params.require(:flat).permit(:attribute1, :attribute2, :attribute3)
  end
end
