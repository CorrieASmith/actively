class CreateSnacks < ActiveRecord::Migration
  def change
    create_table :snacks do |t|
      t.column :add_food, :string

      t.timestamps
    end
  end
end
