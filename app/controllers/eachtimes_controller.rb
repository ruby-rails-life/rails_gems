class EachtimesController < ApplicationController
  before_action :load_eachtimeable  
  
  def create
  	@eachtime = @eachtimeable.eachtimes.create(eachtime_params)
    redirect_to @eachtimeable
  end
  
  private

    def load_eachtimeable
      resource, id = request.path.split('/')[2, 3]
      @eachtimeable = resource.singularize.classify.constantize.find(id)
    end
  
    def eachtime_params
      params.require(:eachtime).permit(:name)
    end
end
