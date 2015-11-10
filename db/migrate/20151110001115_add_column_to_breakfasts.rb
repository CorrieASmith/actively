class AddColumnToBreakfasts < ActiveRecord::Migration
  def change
    add_column :breakfasts, :user_id, :integer
  end
end
