class CreatePlaceRatingEntries < ActiveRecord::Migration
  def change
    create_table :place_rating_entries do |t|
      t.integer :user_id
      t.integer :place_id
      t.string :comment
      t.integer :rating

      t.timestamps
    end
  end
end
