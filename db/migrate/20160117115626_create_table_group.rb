class CreateTableGroup < ActiveRecord::Migration
  def change
    create_table :table_groups do |t|
      t.integer :test_id
      t.string :group_name
      t.string :rule

      t.timestamps null: false
    end
  end
end
