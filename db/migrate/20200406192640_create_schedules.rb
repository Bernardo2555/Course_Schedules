class CreateSchedules < ActiveRecord::Migration[5.2]
  def change
    create_table :schedules do |t|
      t.references :user, polymorphic: true
      t.references :course, polymorphic: true
      t.string :students
      t.string :weekday
      t.string :group
      t.string :time
      t.string :time_end

      t.timestamps
    end
  end
end
