class CreateDinners < ActiveRecord::Migration
  def change
    create_table :dinners do |t|
      t.column :add_food, :string

      t.timestamps
    end
  end
end
