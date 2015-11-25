class Sponsor < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  validates_format_of :url, with: URI::regexp(%w(http https))

  has_attached_file :logo, styles: { medium: "300x300>", thumb: "100x100>" }
end
