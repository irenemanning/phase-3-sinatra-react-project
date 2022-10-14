class CreateCollectors < ActiveRecord::Migration[6.1]
  def change
    create_table :collectors do |t|
      t.string :name
      t.date :dob
      t.timestamps
    end
  end
end
