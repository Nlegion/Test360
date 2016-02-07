
class AddChangeNameOfTypeQuestion < ActiveRecord::Migration
  def change
      change_table :questions do |t|
        t.rename :type, :about
      end
  end
end
