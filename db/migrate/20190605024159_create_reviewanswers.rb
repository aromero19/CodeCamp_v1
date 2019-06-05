class CreateReviewanswers < ActiveRecord::Migration[5.2]
  def change
    create_table :reviewanswers do |t|
      t.integer :review_id
      t.integer :question_id
      t.integer :answer_id

      t.timestamps
    end
  end
end
