class CreateCheckAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :check_answers do |t|
      t.integer :checks
      t.string :description

      t.timestamps
    end
  end
end
