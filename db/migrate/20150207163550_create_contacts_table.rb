class CreateContactsTable < ActiveRecord::Migration
  def change
    create_table :contacts_tables do |t|
      t.string :contacts
    end
    add_index :contacts_tables, :contacts, unique: true
  end
end
