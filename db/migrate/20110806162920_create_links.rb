class CreateLinks < ActiveRecord::Migration
  def self.up
    create_table :links do |t|
		t.integer "user_id"
		t.string "nick", :null => false
		t.string "url", :null => false
		t.timestamps
    end
	add_index("links","user_id")
  end


  def self.down
    drop_table :links
  end
end