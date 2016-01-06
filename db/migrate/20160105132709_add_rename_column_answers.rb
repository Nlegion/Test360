class AddRenameColumnAnswers < ActiveRecord::Migration
  def change
    change_table :answers do |t|
      t.rename :questions_id, :question_id
    end
  end
end
