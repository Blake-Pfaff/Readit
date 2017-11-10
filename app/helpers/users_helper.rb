module UsersHelper

  def does_user_have_posts?
    @user.posts.any?
  end

  def does_user_have_comments?
    @user.comments.any?
  end

end
