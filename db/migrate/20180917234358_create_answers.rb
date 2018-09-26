class CreateAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :answers do |t|
      t.references :question, foreign_key: true
      t.string :title
      t.text :body
      t.integer :answerable_id
      t.string :answerable_type
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
