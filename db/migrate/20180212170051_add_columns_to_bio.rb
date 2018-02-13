class AddColumnsToBio < ActiveRecord::Migration[5.1]
  def change
    add_column :bios, :goals, :string
    add_column :bios, :dreams, :string
    add_column :bios, :values, :string
    add_column :bios, :place_born, :string
    add_column :bios, :places_lived, :string
    add_column :bios, :places_visited, :string
    add_column :bios, :interests, :string
    add_column :bios, :education, :string
    add_column :bios, :work, :string
    add_column :bios, :relationship_status, :string
    add_column :bios, :favorite_color, :string
    add_column :bios, :favorite_sport, :string
    add_column :bios, :favorite_show, :string
    add_column :bios, :favorite_music, :string
    add_column :bios, :favorite_movie, :string
    add_column :bios, :favorite_quote, :string
    add_column :bios, :languages, :string
    add_column :bios, :gender, :integer
  end
end
