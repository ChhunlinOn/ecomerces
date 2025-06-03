module Admin
  class UsersController < ApplicationController
    layout 'admin'

    def index
      @users = User.all
    end

    # Show one user
    def show
      @user = User.find(params[:id])
    end
  end
end
