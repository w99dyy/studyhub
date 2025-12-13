class ProfilesController < ApplicationController
  before_action :authenticate_user!
  before_action :profile_url, only: [ :show ]
  # before_action :authorize_user, only: [ :edit, :update, :destroy ]

  def show
  end

  def edit
  end

  def update
  end
end
