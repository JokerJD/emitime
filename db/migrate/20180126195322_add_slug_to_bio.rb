class AddSlugToBio < ActiveRecord::Migration[5.1]
  def change
    add_column :bios, :slug, :string
  end
end
