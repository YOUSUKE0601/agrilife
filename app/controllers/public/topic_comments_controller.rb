class Public::TopicCommentsController < ApplicationController

  def create
    @topic = Topic.find(params[:topic_id])
    @comment = current_end_user.topic_comments.new(topic_comment_params)
    @comment.topic_id = @topic.id
    @comment.save
    # app/views/public/topic_comments/create.js.erbを参照する
  end

  def destroy
    @topic = Topic.find(params[:topic_id])
    @comment = TopicComment.find_by(id: params[:id], topic_id: @topic)
    @comment.destroy
    # app/views/public/topic_comments/destroy.js.erbを参照する
  end

  private

  def topic_comment_params
    params.require(:topic_comment).permit(:comment)
  end

end
