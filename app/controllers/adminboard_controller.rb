class AdminboardController < ApplicationController
  before_filter :authenticate_user!

  def index
    @users = User.all
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to(root_path, :notice => 'User was successfully deleted.')
  end
end
