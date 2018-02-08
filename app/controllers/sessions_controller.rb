class SessionsController < ApplicationController
<<<<<<< HEAD
    def new
    end

    def create
  #search DB for user w/ spec emil add in params hash
      user = User.find_by(email: params[:session][:email].downcase)

  #verify user is not nill & PW in params hash matches
      if user && user.authenticate(params[:session][:password])
        create_session(user)
        flash[:notice] = "Welcome, #{user.name}!"
        redirect_to root_path
      else
        flash.now[:alert] = 'Invalid email/password combination'
        render :new
      end
    end

    def destroy
  #define destroy.  delete a user session.  logs user out
      destroy_session(current_user)
      flash[:notice] = "You've been signed out, come back soon!"
      redirect_to root_path
    end
=======
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)

    if user && user.authenticate(params[:session][:password])
      create_session(user)
      flash[:notice] = "Welcome, #{user.name}!"
      redirect_to root_path
    else
      flash.now[:alert] = 'Invalid email/password combination'
      render :new
    end
  end

  def destroy
    destroy_session(current_user)
    flash[:notice] = "You've been signed out, come back soon!"
    redirect_to root_path
  end
>>>>>>> 88a740581ec58727348298b674faa22a7990f9aa
end
