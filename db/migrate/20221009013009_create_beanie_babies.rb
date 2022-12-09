class CreateBeanieBabies < ActiveRecord::Migration[6.1]
  def change
    create_table :beanie_babies do |t|
      t.string :name
      t.date :dob
      t.text :poem
      t.string :pellets
      t.string :img
      t.integer :collector_id
      t.timestamps
    end
  end
end
