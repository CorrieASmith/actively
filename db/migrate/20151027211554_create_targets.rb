class CreateTargets < ActiveRecord::Migration
  def change
    create_table :targets do |t|
      t.column :muscle, :string

      t.timestamps
    end
  end
end
