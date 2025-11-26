class PagesController < ApplicationController
  def home
    @posts = Post.all.order(created_at: :desc)
    @recent_posts = Post.order(created_at: :desc).limit(10)
  end
end
