class ResourcesController < ApplicationController
  before_action :set_resource, only: [:edit, :update, :destroy]

  def index
    @resources = Resource.all
  end

  def new
    @resource = Resource.new
  end

  def edit
  end

  def create
    @resource = Resource.new(resource_params)

    if @resource.save
      redirect_to @resource, notice: 'Resource was successfully created.'
    else
      render :new
    end
  end

  def update
    if @resource.update(resource_params)
      redirect_to @resource, notice: 'Resource was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @resource.destroy
    redirect_to resources_url, notice: 'Resource was successfully destroyed.'
  end

  private

  def set_resource
    @resource = Resource.find(params[:id])
  end

  def resource_params
    params.require(:resource).permit(:name, :value)
  end
end
