class MaterialsController < ApplicationController
  def index
    
  end

  def show
    @material = Material.find(params[:id])
    @is_single_bar_page = true
  end
end
