class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.column :description, :string
      t.column :target_id, :integer

      t.timestamps
    end
  end
end
