class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.string :name

      t.belongs_to :questions, index: true
      t.timestamps null: false
    end
  end
end
