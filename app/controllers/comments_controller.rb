class CommentsController < ApplicationController

  before_action :set_event

  def create
    @comment = Comment.create! content: params[:comment][:content], event: @event, user: @current_user
  end

  private

  def set_event
    @event = Event.find(params[:event_id])
  end

end
