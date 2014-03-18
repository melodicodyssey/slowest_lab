class AddIndexToAttendance < ActiveRecord::Migration
  def change
    add_index :attendances, [:user_id, :show_id]
  end
end
