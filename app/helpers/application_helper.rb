module ApplicationHelper
  def is_admin? 
    session[:admin].present?
  end
end
