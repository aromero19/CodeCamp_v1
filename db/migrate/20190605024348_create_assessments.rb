class CreateAssessments < ActiveRecord::Migration[5.2]
  def change
    create_table :assessments do |t|
      t.integer :question_id
      t.integer :answer_id
      t.string :description

      t.timestamps
    end
  end
end
