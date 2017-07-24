class SimpleformsController < ApplicationController
  def index
    @simpleforms = Simpleform.page(params[:page])
    add_breadcrumb "Simpleforms", simpleforms_path
  end

  def show
    @simpleform = Simpleform.find(params[:id])
  end

  def new
    @simpleform = Simpleform.new
  end
  
  def edit
    @simpleform = Simpleform.find(params[:id])
  end

  def create
    @simpleform = Simpleform.new(simpleform_params)
    respond_to do |format|
      if @simpleform.save
        format.html { redirect_to @simpleform, notice: 'Simpleform was successfully created.' }
        format.json { render :show, status: :created, location: @simpleform }
      else
        format.html { render :new }
        format.json { render json: @simpleform.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def update
    @simpleform = Simpleform.find(params[:id])
    respond_to do |format|
      if @simpleform.update(simpleform_params)
        format.html { redirect_to @simpleform, notice: 'Simpleform was successfully updated.' }
        format.json { render :show, status: :ok, location: @simpleform }
      else
        format.html { render :edit }
        format.json { render json: @simpleform.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @simpleform = Simpleform.find(params[:id])
    @simpleform.destroy
    respond_to do |format|
      format.html { redirect_to simpleforms_url, notice: 'Simpleform was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  private

    def simpleform_params
      params.require(:simpleform).permit(:name, :content, :popular, :production_date, :expiration_period, :producing_area, :simpleformp_id, {:flavor_ids => []}, :price)
    end

end