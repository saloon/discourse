class QueuedPostsController < ApplicationController

  before_filter :ensure_staff

  def index
    state = QueuedPost.states[(params[:state] || 'new').to_sym]
    state ||= QueuedPost.states[:new]

    @queued_posts = QueuedPost.where(state: state)
    render json: @queued_posts
  end

end
