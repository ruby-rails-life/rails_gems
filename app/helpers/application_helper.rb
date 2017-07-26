module ApplicationHelper
  def showLocale?(controller_name, action_name)
    showFlag = true
    
    if ["unlocks", "confirmations", "passwords"].include?(controller_name)
      showFlag = false 	
    elsif ["sessions", "registrations"].include?(controller_name)
      showFlag = false if action_name == 'new'
    end
    showFlag
  end
end
