class AddVotesToResources < ActiveRecord::Migration
  def up
  	add_column :resources, :votes, :integer, :default => 0
  end
  def down
  	remove_column :resources, :votes
  end  
end
