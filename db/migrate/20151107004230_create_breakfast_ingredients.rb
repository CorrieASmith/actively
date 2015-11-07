class CreateBreakfastIngredients < ActiveRecord::Migration
  def change
    create_table :breakfast_ingredients do |t|
      t.column :description, :string
      t.column :breakfast_id, :integer

      t.timestamps
    end
  end
end
