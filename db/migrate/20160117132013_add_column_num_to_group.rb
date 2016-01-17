class AddColumnNumToGroup < ActiveRecord::Migration
  def change
    add_column :groups, :num, :integer
  end
end
