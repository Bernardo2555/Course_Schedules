class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :description
      t.string :email
      t.string :telefon
      t.primary_key :ar
      t.integer :year
      t.string :depence

      t.timestamps
    end
  end
end
