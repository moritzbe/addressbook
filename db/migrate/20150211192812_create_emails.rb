class CreateEmails < ActiveRecord::Migration
  def change
    create_table :emails do |t|
    t.integer :contact_id
    t.integer :email
    t.timestamps null: false
    end
  end
end
