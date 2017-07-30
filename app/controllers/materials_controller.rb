class MaterialsController < ApplicationController
  before_action :set_material, only: [:show, :edit, :update, :destroy]

  def create
    @universe = Universe.find(params[:universe_id])
    @material = @universe.materials.create(material_params)
    redirect_to universe_path(@universe)
  end
  
  def show
  end

  def edit
  end

  def update
    respond_to do |format|
      if @material.update(material_params)
        format.html { redirect_to @material, notice: 'Material was successfully updated.' }
        format.json { render :show, status: :ok, location: @material }
      else
        format.html { render :edit }
        format.json { render json: @material.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @universe = @material.universe
    @material.destroy
    respond_to do |format|
      format.html { redirect_to universe_path(@universe), notice: 'Material was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def set_material
      @material = Material.find(params[:id])
    end

    def material_params
      params.require(:material).permit(:name)
    end
end
