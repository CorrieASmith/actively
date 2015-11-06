class CreateBreakfasts < ActiveRecord::Migration
  def change
    create_table :breakfasts do |t|
      t.column :add_food, :string

      t.timestamps
    end
  end
end
