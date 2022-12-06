class PagesController < ApplicationController
  def home
    @posts = Post.includes(:user).all.order(created_at: :desc)
  end
end
