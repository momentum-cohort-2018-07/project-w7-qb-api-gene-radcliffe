class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.string :title
      t.text :body
      t.datetime :published_date
      t.integer :user_id
      t.integer :answers_count, default: 0, null: false
      t.timestamps
    end
  end
end
