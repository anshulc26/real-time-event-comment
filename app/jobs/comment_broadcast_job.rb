class CommentBroadcastJob < ApplicationJob
  queue_as :default

  def perform(comment)
    ActionCable.server.broadcast "comments",
      comment: CommentsController.render(partial: 'comments/comment', locals: { comment: comment }), count: comment.event.comments_count, event_id: comment.event.id
  end
end
