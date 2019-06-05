class CreateChecks < ActiveRecord::Migration[5.2]
  def change
    create_table :checks do |t|
      t.string :description
      t.string :comments
      t.integer :answer

      t.timestamps
    end
  end
end
