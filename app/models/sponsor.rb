class Sponsor < ActiveRecord::Base
  attr_accessible :name, :description, :logo
  has_attached_file :logo, :styles => { :medium => "300x300>", :thumb => "100x100>" }
end
