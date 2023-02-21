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
    @carMenuItems = CarMenuItem.new(car_params)
    if @carMenuItems.save
    render json: {
      success: 'Car added successfully'
    },
         status: :created
    else
    render json: {
      error: 'Car failed to add'
    },
         status: :bad_request
    end
  end
  
  def destroy
    @carMenuItems = CarMenuItem.all
    CarMenuItem.find(params[:id]).destroy!
    render json: @carMenuItems
  end
  
  def car_params
    image = Cloudinary::Uploader.upload(params[:image_url])
    params.permit(:car_name, :car_description, :price, :speed, :consumption).merge(image_url: image['url'])
  end
end
