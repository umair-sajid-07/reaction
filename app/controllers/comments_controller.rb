class CommentsController < ApplicationController
  before_action :authenticate_user!, only: [:create, :destroy]

  def create
    @post = Post.find(params[:post_id])
    @parent_comment = @post.comments.find_by(id: params[:parent_comment_id])
    @comment = @parent_comment ? @parent_comment.replies.build(comment_params) : @post.comments.build(comment_params)
    @comment.user = current_user
  
    if @comment.save
      redirect_to post_path(@post), notice: 'Comment was successfully created.'
    else
      render 'posts/show'
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to post_path(@comment.post), notice: 'Comment was successfully deleted.'
  end

  private

  def comment_params
    params.require(:comment).permit(:body)
  end
end
