class CarMenuItemsController < ApplicationController
    def index
    @carMenuItems = CarMenuItem.all
    render json: @carMenuItems
  end

  def show
    @carMenuItems = CarMenuItem.find(params[:id])
    render json: @carMenuItems
  end

  def create
    @carMenuItems = CarMenuItem.create(
      car_name: params[:car_name],
      image_url: params[:image_url],
      price: params[:price],
      car_description: params[:car_description]
    )
    render json: @carMenuItems
  end

  def update
    @carMenuItems = CarMenuItem.find(params[:id])
    @carMenuItems.update(
      car_name: params[:car_name],
      image_url: Cloudinary::Uploader.upload(params[:image_url]),
      price: params[:price],
      car_description: params[:car_description]
    )
    render json: @carMenuItems
  end

  def destroy
    @carMenuItems = CarMenuItem.all
    @carMenuItems = CarMenuItem.find(params[:id])
    @carMenuItems.destroy
    render json: @carMenuItems
  end
end
