class CreateLunchIngredients < ActiveRecord::Migration
  def change
    create_table :lunch_ingredients do |t|
      t.column :description, :string
      t.column :lunch_id, :integer

      t.timestamps
    end
  end
end
