class MaterialsController < ApplicationController
  def index
    
  end

  def show
    @material = Material.find(params[:id])
  end
end
