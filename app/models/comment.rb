class Comment < ActiveRecord::Base
  attr_accessible :author, :comment, :resource_id

  belongs_to :resource
end