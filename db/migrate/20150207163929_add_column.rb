class AddColumn < ActiveRecord::Migration
  def change
  	 add_column :contacts_tables, :prename, :text
  	 add_column :contacts_tables, :surnamen, :text
  	 add_column :contacts_tables, :contact_id, :text
  end
end