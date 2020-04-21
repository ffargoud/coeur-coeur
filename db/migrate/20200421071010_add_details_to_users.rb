class AddDetailsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :nom, :string
    add_column :users, :prenom, :string
    add_column :users, :pays, :string
    add_column :users, :numero_et_voie, :string
    add_column :users, :code_postal, :string
    add_column :users, :ville, :string
    add_column :users, :date_de_naissance, :date
    add_column :users, :nationalite, :string
  end
end
