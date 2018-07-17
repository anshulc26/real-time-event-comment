class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :event, counter_cache: true

  after_commit -> { CommentBroadcastJob.perform_later(self) }

end
