class AddPartNumberOfAnswersToTests < ActiveRecord::Migration
  def change
    add_column :tests, :num_of_answ, :integer
    add_column :tests, :type_of_answ, :string
  end
end
