class AddLastNameToBio < ActiveRecord::Migration[5.1]
  def change
    add_column :bios, :last_name, :string
  end
end
