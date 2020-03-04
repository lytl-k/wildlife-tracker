class CreateSightings < ActiveRecord::Migration[6.0]
  def change
    create_table :sightings do |t|
      t.integer :animal_id
      t.integer :user_id
      t.integer :region_id
      t.float :latitude, null: false
      t.float :longitude, null: false

      t.timestamps
    end

    add_foreign_key :sightings, :regions
    add_foreign_key :sightings, :users
    add_foreign_key :sightings, :animals
  end
end
