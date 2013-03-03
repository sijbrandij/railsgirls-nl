class AddddDownvoteColumnToResources < ActiveRecord::Migration

  def up
  	rename_column :resources, :votes, :upvotes
  	add_column :resources, :downvotes, :integer, :default => 0 
  end

  def down
  	remove_column :resources, :downvotes
  	rename_column :resources, :upvotes, :votes
  end
end
