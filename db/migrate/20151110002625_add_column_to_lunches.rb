class AddColumnToLunches < ActiveRecord::Migration
  def change
    add_column :lunches, :user_id, :integer
  end
end
