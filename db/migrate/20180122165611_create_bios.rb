class CreateBios < ActiveRecord::Migration[5.1]
  def change
    create_table :bios do |t|
      t.string :title
      t.string :name
      t.date :birthday
      t.text :lastwords
      t.boolean :private
      t.integer :user_id

      t.timestamps
    end
    add_index :bios, :user_id
  end
end
