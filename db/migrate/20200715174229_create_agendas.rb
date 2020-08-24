class CreateAgendas < ActiveRecord::Migration[5.2]
  def change
    create_table :agendas do |t|
      t.string :morning_one
      t.string :morning_two
      t.string :morning_three
      t.string :morning_four
      t.string :morning_five
      t.string :afternoon_one
      t.string :afternoon_two
      t.string :afternoon_three
      t.string :afternoon_four
      t.string :afternoon_five
      t.string :afternoon_six
      t.string :evening_one
      t.string :evening_two
      t.string :evening_three
      t.string :evening_four
      t.string :evening_five
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
