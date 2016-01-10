class AddDetailsToAnswers < ActiveRecord::Migration
  def change
    add_column :answers, :try_of, :integer
  end
end
