class CreateProfessors < ActiveRecord::Migration[5.2]
  def change
    create_table :professors, primary_key: :ar do |t|
      t.string :description
      t.string :email
      t.string :telephone

      t.timestamps
    end
  end
end
