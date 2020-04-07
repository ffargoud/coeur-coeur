class CreateSlots < ActiveRecord::Migration[5.2]
  def change
    create_table :slots do |t|
      t.date :date
      t.time :h_debut
      t.time :h_fin
      t.string :type_mission
      t.text :consignes
      t.references :user, foreign_key: true
      t.references :center, foreign_key: true

      t.timestamps
    end
  end
end
