class Resource < ActiveRecord::Base
  attr_accessible :title, :description, :url
end
