class AddLogoToSponsors < ActiveRecord::Migration
  def change
    add_attachment :sponsors, :logo
  end
end
