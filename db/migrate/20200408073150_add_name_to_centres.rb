class AddNameToCentres < ActiveRecord::Migration[5.2]
  def change
    add_column :centres, :name, :string
  end
end
