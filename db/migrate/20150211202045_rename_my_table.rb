  	# In db/migrate/[timestamp]_rename_my_table.rb:
class RenameMyTable < ActiveRecord::Migration
  def self.up
    rename_table :contacts_tables, :contacts
  end

  def self.down
    rename_table :contacts, :contacts_tables
  end
end
