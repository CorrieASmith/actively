class CreateLunches < ActiveRecord::Migration
  def change
    create_table :lunches do |t|
      t.column :add_food, :string

      t.timestamps
    end
  end
end
