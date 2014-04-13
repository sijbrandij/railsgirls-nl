class Sponsor < ActiveRecord::Base
  attr_accessible :name, :description, :logo, :url

  validates_uniqueness_of :name
  validates_format_of :url, :with => URI::regexp(%w(http https))

  has_attached_file :logo, :styles => { :medium => "300x300>", :thumb => "100x100>" }
end
