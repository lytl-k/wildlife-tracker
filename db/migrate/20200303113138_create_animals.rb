class CreateAnimals < ActiveRecord::Migration[6.0]
  def change
    create_table :animals do |t|
      t.string :name
      t.integer :animal_type_id

      t.timestamps
    end

    add_foreign_key :animals, :animal_types
  end
end
