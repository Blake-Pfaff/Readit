module SessionsHelper
<<<<<<< HEAD
 #define create_session sets user ID on session obj to user.id
=======
  # #4
>>>>>>> 88a740581ec58727348298b674faa22a7990f9aa
  def create_session(user)
    session[:user_id] = user.id
  end

<<<<<<< HEAD
=======
  # #5
>>>>>>> 88a740581ec58727348298b674faa22a7990f9aa
  def destroy_session(user)
    session[:user_id] = nil
  end

<<<<<<< HEAD
=======
  # #6
>>>>>>> 88a740581ec58727348298b674faa22a7990f9aa
  def current_user
    User.find_by(id: session[:user_id])
  end
end
