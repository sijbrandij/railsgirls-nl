class Resource < ActiveRecord::Base
  attr_accessible :title, :description, :url

  def upvote
    self.upvotes = self.upvotes + 1
  end

  def downvote
    self.downvotes = self.downvotes + 1
  end

  def votes
    upvotes - downvotes
  end
end
