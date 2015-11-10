class AddColumnToDinners < ActiveRecord::Migration
  def change
    add_column :dinners, :user_id, :integer
  end
end
