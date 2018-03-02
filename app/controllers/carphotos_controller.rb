class CarphotosController < ApplicationController
  def index
    # raise
    @carphotos = Car.find(params[:car_id]).carphotos
  end

  def destroy
    # raise
    @carphoto = Carphoto.find(params[:id])
    @carphoto.destroy
    authorize @carphoto
    redirect_to car_carphotos_path(params[:car_id])
  end

  private
  def carphoto_params
    params.require(:carphoto).permit(:id)
  end
end
