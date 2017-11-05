module UsersHelper

  def does_user_have_posts?
    @user.posts != nil
  end

  def does_user_have_comments?

  end

end
