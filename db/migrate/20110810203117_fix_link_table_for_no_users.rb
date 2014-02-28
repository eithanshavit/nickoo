class FixLinkTableForNoUsers < ActiveRecord::Migration
  def self.up
    add_column :links, :password, :string, :null => false
  end

  def self.down
    
	remove_column :links, :password
  end
end
