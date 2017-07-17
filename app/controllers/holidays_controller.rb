class HolidaysController < ApplicationController
  
  def index
    holiday = Holiday.new(date: DateTime.now)
    @holiday_extend = ActiveType.cast(holiday, HolidayExtend)
    @holiday_extend.name = '祝日'
  end
    
  def edit
    @holidays_form = HolidaysForm.new
  end

  def update
    @holidays_form = HolidaysForm.new(holiday_params)
    if @holidays_form.save
    else
      render :edit
    end
  end

  private
    def holiday_params
      params.require(:holidays_form).permit(holidays_attributes:[:date])
    end

end