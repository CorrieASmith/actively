class CreateDinnerIngredients < ActiveRecord::Migration
  def change
    create_table :dinner_ingredients do |t|
      t.column :description, :string
      t.column :dinner_id, :integer

      t.timestamps
    end
  end
end
