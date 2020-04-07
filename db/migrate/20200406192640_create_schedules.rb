class CreateSchedules < ActiveRecord::Migration[5.2]
  def change
    create_table :schedules do |t|
      t.references :professor, foreign_key: true
      t.references :course, foreign_key: true
      t.string :students
      t.string :weekday
      t.time :time

      t.timestamps
    end
  end
end
