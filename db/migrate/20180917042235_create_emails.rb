class CreateEmails < ActiveRecord::Migration[5.2]
  def change
    create_table :emails do |t|
      t.integer :emailable_id
      t.string :emailable_type
      t.integer :user_id

      t.timestamps
    end
  end
end
