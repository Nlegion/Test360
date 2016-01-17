class AddChangeQuestionGroupId < ActiveRecord::Migration
  def change
      change_table :questions do |t|
        t.change :group_id, :integer
      end
  end
end