class Resource < ActiveRecord::Base
  attr_accessible :title, :description, :url

  # def upvote
  # 	votes = votes + 1
  # end

end
