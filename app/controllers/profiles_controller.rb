class ProfilesController < ApplicationController
  before_action :set_user
  before_action :authenticate_user!
  before_action :profile_url, only: [ :show ]
  # before_action :authorize_user, only: [ :edit, :update, :destroy ]

  def show
    if @user
    @posts = @user.posts.order(created_at: :desc)

    else
      redirect_to root_path, alert: "user not found!"
    end
  end

  def edit
  end

  def update
  end

  private

  def set_user
    @user = User.find_by!(username: params[:username])
  end

  def profile_params
    params.require(:profile).permit(:avatar)
  end
end
