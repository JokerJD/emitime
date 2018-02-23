class AddPlaceCurrentToBio < ActiveRecord::Migration[5.1]
  def change
    add_column :bios, :place_current, :string
  end
end
