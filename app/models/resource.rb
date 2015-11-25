class Resource < ActiveRecord::Base
  validates :title, :description, :url, presence: true

  def upvote
    self.upvotes = upvotes.succ
  end

  def downvote
    self.downvotes = downvotes.succ
  end

  def votes
    upvotes - downvotes
  end
end
