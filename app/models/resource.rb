class Resource < ActiveRecord::Base

  def upvote
    self.upvotes = self.upvotes.succ
  end

  def downvote
    self.downvotes = self.downvotes.succ
  end

  def votes
    self.upvotes - self.downvotes
  end

end
