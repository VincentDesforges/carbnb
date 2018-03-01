class CarphotosController < ApplicationController
  def index
    # raise
    @carphotos = Car.find(params[:car_id]).carphotos
  end

  def destroy
    @carphotos = Carphoto.find(params[:id])
    authorize @carphotos
    # render index
  end

  private
  def carphoto_params
    params.require(:carphoto).permit(:id)
  end
end
