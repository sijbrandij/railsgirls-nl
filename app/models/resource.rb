class Resource < ActiveRecord::Base
  attr_accessible :title, :description, :url

  has_many :comments

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
