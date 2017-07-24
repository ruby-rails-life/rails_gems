module ApplicationHelper
  def showLocale?(controller_name, action_name)
    showFlag = true
  	if controller_name == 'sessions' || controller_name == 'registrations'
  	  showFlag = false if action_name == 'new'
  	end
  	showFlag  	
  end	
end
