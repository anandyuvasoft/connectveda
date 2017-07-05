module ApplicationHelper

  def full_name
    "#{current_user.first_name} #{current_user.last_name}".titleize
  end

end
