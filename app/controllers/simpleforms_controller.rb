class SimpleformsController < ApplicationController
	def new
	  @simpleform = Simpleform.new
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

  private

    def simpleform_params
      params.require(:simpleform).permit(:name, :content, :popular)
    end

end
