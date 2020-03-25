class CreateSubjects < ActiveRecord::Migration[5.2]
  def change
    create_table :subjects do |t|
      t.string :description
      t.integer :code
      t.integer :professor
      t.integer :student
      t.time :schedule
      t.integer :ideal_year

      t.timestamps
    end
  end
end
