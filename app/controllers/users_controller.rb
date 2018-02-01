class UsersController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :correct_user, only: [:show]
  def new
    @user = User.new
  end

  def confirm
    @user = User.new(user_params)
    if @user.invalid?
      render :new
    end
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "Welcome to Bloccit #{@user.name}!"
      create_session(@user)
      redirect_to root_path
    else
      flash.now[:alert] = "There was an error creating your account. Please try again."
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
    @posts = @user.posts.visible_to(current_user)
    @favorited_posts = Post.joins(:favorites).where(favorites: { user_id: @user.id })
  end

  private

    # Using a private method to encapsulate the permissible parameters is
    # a good pattern since you'll be able to reuse the same permit
    # list between create and update. Also, you can specialize this method
    # with per-user checking of permissible attributes.
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
end
