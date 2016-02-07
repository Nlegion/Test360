class CreateResults < ActiveRecord::Migration
  def change
    create_table :results do |t|
      t.integer :id_result
      t.string :test_name
      t.string :name_of_type_quest

      t.timestamps null: false
    end
  end
end
