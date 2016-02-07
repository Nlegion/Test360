class AddRenameColumnInQuestions < ActiveRecord::Migration
  def change
    change_table :questions do |t|
      t.rename :about, :group_id
    end    
  end
end
