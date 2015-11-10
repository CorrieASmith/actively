class AddColumnToSnacks < ActiveRecord::Migration
  def change
    add_column :snacks, :user_id, :integer
  end
end
