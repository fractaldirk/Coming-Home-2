module ApplicationHelper
  def office_name
    if current_user.user_office == 1
      "International"
    elsif current_user.user_office == 2
      "Amsterdam"
    end
  end
end
