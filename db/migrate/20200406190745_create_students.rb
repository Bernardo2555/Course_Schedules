class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students, primary_key: :ar do |t|
      t.string :description
      t.string :email
      t.string :telephone
      t.integer :year

      t.timestamps
    end
  end
end
