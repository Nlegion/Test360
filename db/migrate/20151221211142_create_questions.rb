class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.integer :num
      t.string :body
      t.string :type
      t.boolean :back
      t.integer :test_id

      t.timestamps null: false
    end
  end

end
