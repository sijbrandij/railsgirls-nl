class AddResourceToComments < ActiveRecord::Migration
  def change
  	add_column :comments, :resource_id, :integer
  end
end
