class ApplicationController < ActionController::Base
  protect_from_forgery

  private

  def check_admin_permissions
    unless current_user.admin?
      redirect_to root_path, notice: "You do not have permissions to see this page"
    end
  end
end
