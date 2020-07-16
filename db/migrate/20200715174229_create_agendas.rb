class CreateAgendas < ActiveRecord::Migration[5.2]
  def change
    create_table :agendas do |t|
      t.string :agenda
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
