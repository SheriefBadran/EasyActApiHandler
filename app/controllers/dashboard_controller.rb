class DashboardController < ApplicationController
  before_filter :authenticate_user!

  def index
  end

  def edit
    @user = User.find(current_user.id)
    if current_user.api_key
      # Reset api key
      @user.delete_api_key
      redirect_to(root_path, :notice => 'Api key is deleted.')
    else
      @user.generate_uuid_api_key
      redirect_to(root_path, :notice => 'Api key was successfully generated.')
    end

    @user.save
  end
end
