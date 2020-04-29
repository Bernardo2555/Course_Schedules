class AddTimeEndToSchedules < ActiveRecord::Migration[5.2]
  def change
    add_column :schedules, :time_end, :time
  end
end
