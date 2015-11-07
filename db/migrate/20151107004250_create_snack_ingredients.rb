class CreateSnackIngredients < ActiveRecord::Migration
  def change
    create_table :snack_ingredients do |t|
      t.column :description, :string
      t.column :snack_id, :integer

      t.timestamps
    end
  end
end
