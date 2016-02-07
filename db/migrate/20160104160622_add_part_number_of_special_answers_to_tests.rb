class AddPartNumberOfSpecialAnswersToTests < ActiveRecord::Migration
  def change
    add_column :tests, :sp_answer, :boolean
  end
end
