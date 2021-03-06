class UsersController < ApplicationController
  def index
    render template: 'users/index.html.erb', locals: {user: User.all}
  end

  def show
    if User.exists?(params[:id])
      render template: 'user/show.html.erb', locals: { user: User.find(params[:id])}
    else
      # render a not found html error message
      render html: "Entity Not Found.", status: 404
    end
  end

  def new
    render locals: {
      user: User.new
    }
  end

  def edit
    render locals: {
      user: User.find(params[:id])
    }
  end

  def create
    user = User.new
    user.username = params[:user][:username]
    user.password = params[:user][:password]

    if user.save
      redirect_to actions: "index"
    else
      flash[:alert] = "User could not be saved"
      render template: 'user/new.html.erb', locals: {
        user: user
      }
    end
  end

  def update
    user = User.find(params[:id])
    if user.update(user_params)
    else
      render :edit
    end
  end

  def destroy
    if User.exists?(params[:id])
      User.destroy(params[:id])
      render message: "User deleted."
    else
      render message: "User not found."
    end
  end

  private
  def set_user
    User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:username, :password)
  end

end
