class WelcomeController < ApplicationController
  def index
    @posts = Post.includes(:user).order(updated_at: :desc).limit(10)
  end
end
