class CommentsController < ApplicationController
  before_filter :require_user, only: [:create]

  def create
    @comment = current_user.comments.new(comment_params)
    @comment.link_id = params[:link_id]
    @comment.save!
    redirect_to link_path(params[:link_id])
  end

  def show
    @comment = Comment.find(params[:id])
  end

  private

  def comment_params
    params.require(:comment).permit(:body)
  end
end
