class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
		t.string "first_name", :null => false
		t.string "last_name", :null => false
		t.string "user_name", :null => false
		t.string "password", :null => false
		t.string "email", :null => false
		t.timestamps
    end
	add_index("users","user_name")
  end

  def self.down
    drop_table :users
  end
end