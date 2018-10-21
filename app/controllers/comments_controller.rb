class CommentsController < ApplicationController
  def index
    render json: Comment.all
  end

  def create
    render json: Comment.create(comment_params)
  end

  def update
    @comment = Comment.find(params.id)
    @comment.update
    @comment.save
  end

  private

  def comment_params
    params.require(:comment).permit(:id,:user_id, :event_id, :content,:name)
  end

end
