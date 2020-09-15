class CreateClassRooms < ActiveRecord::Migration[5.2]
  def change
    create_table :class_rooms do |t|
      t.references :student
      t.references :schedule

      t.timestamps
    end
  end
end
