class CreateSubjects < ActiveRecord::Migration[5.2]
  def change
    create_table :subjects do |t|
      t.string :description
      t.primary_key :code
      t.integer :professor
      t.insteger :student
      t.time :schedule
      t.integer :ideal_year

      t.timestamps
    end
  end
end
