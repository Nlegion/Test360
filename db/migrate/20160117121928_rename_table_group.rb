class RenameTableGroup < ActiveRecord::Migration
  def change
    rename_table :table_groups, :groups
  end
end
