class CreateProfessors < ActiveRecord::Migration[5.2]
  def change
    create_table :professors do |t|
      t.string :description
      t.string :email
      t.string :telefon
      t.primary_key :ar
      t.time :can_schedule
      t.time :cant_schedule

      t.timestamps
    end
  end
end
