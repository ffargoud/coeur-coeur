class AddNumeroToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :numero, :integer
  end
end
