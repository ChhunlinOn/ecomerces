module Admin
  class DashboardController < ApplicationController
    before_action :require_login

    def index
      # Only accessible after login
    end

    private

    def require_login
      unless session[:user_id]
        redirect_to login_path, alert: "Please log in first"
      end
    end
  end
end
