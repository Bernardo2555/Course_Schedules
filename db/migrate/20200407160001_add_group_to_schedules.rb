class AddGroupToSchedules < ActiveRecord::Migration[5.2]
  def change
    add_column :schedules, :group, :string
  end
end
