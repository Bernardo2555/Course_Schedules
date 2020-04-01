class CreateGrades < ActiveRecord::Migration[5.2]
  def change
    create_table :grades do |t|
      t.belongs_to :subject
      t.belongs_to :student

      t.timestamps
    end
  end
end
