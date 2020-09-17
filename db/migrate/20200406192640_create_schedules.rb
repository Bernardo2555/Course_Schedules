class CreateSchedules < ActiveRecord::Migration[5.2]
  def change
    create_table :schedules do |t|
      t.references :user, polymorphic: true, nil: false
      t.references :course, polymorphic: true, nil: false
      t.string :weekday
      t.string :group, nil: false
      t.string :time
      t.string :time_end

      t.timestamps
    end
  end
end
