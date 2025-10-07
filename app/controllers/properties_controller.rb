class PropertiesController < ApplicationController
  def show
    property = Property.find(params[:id])
    render json: property
  end

  def index
    properties = Property.includes(:units).all
    render json: properties
  end
end
