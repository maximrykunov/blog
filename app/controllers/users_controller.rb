class UsersController < ApplicationController
  # before_action :authenticate_user!
  before_action :set_post, only: %i[ show edit update destroy ]

  # GET /users/1 or /users/1.json
  def show
    @posts = Post.where(user: @user).order(updated_at: :desc).limit(10)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @user = User.find(params[:id])
    end
end
