class CreateAccommodations < ActiveRecord::Migration[7.0]
  def change
    create_table :accommodations do |t|
      t.string :title
      t.text :description
      t.integer :persons

      t.timestamps
    end
  end
end
