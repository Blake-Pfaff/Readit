class CommentsController < ApplicationController
 # use to ensure guest users are not premitted to create comments
   before_action :require_sign_in
   before_action :authorize_user, only: [:destroy]

   def create
 # find correct post using post_id & make new comment using comment_params
     @post = Post.find(params[:post_id])
     comment = @post.comments.new(comment_params)
     comment.user = current_user

     if comment.save
       flash[:notice] = "Comment saved successfully."
 # redirect to posts show.  if comment was valid
       redirect_to [@post.topic, @post]
     else
       flash[:alert] = "Comment failed to save."
 # redirect if save failed
       redirect_to [@post.topic, @post]
     end
   end

   def destroy
     @post = Post.find(params[:post_id])
     comment = @post.comments.find(params[:id])

     if comment.destroy
       flash[:notice] = "Comment was deleted."
       redirect_to [@post.topic, @post]
     else
       flash[:alert] = "Comment couldn't be deleted. Try again."
       redirect_to [@post.topic, @post]
     end
   end

   private

 # lists prams needed to make comments
   def comment_params
     params.require(:comment).permit(:body)
   end

   def authorize_user
     comment = Comment.find(params[:id])
     unless current_user == comment.user || current_user.admin?
       flash[:alert] = "You do not have permission to delete a comment."
       redirect_to [comment.post.topic, comment.post]
     end
   end
 end
