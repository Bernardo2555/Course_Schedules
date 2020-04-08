class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses, primary_key: :code_c do |t|
      t.string :description
      t.integer :ideal_year

      t.timestamps
    end
  end
end
