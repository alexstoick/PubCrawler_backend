class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :name
      t.string :latitude
      t.string :longitude
      t.integer :rating

      t.timestamps
    end
  end
end
