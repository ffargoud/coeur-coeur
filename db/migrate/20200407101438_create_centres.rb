class CreateCentres < ActiveRecord::Migration[5.2]
  def change
    create_table :centres do |t|
      t.string :adresse
      t.integer :telephone
      t.text :info_diverses
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
