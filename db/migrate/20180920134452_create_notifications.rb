class CreateNotifications < ActiveRecord::Migration[5.2]
  def change
    create_table :notifications do |t|
      t.string :message
      t.references :messageable, polymorphic: true
      t.boolean :message_read, :default => true 

      t.timestamps
    end
  end
end
