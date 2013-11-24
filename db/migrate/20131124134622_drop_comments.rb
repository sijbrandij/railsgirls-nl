class DropComments < ActiveRecord::Migration
  def up
  	drop_table "comments"
  end

  def down
  	create_table "comments", :force => true do |t|
      t.string   "author"
      t.text     "comment"
      t.datetime "created_at",  :null => false
      t.datetime "updated_at",  :null => false
      t.integer  "resource_id"
    end
  end
end
