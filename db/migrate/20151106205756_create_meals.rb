class CreateMeals < ActiveRecord::Migration
  def change
    create_table :meals do |t|
      t.column :breakfast, :string
      t.column :lunch, :string
      t.column :dinner, :string
      t.column :snacks, :string

      t.timestamps
    end
  end
end
