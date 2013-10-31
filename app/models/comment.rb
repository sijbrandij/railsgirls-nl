class Comment < ActiveRecord::Base
  include Rakismet::Model
  attr_accessible :author, :comment, :resource_id
  rakismet_attrs content: :comment
  belongs_to :resource
end