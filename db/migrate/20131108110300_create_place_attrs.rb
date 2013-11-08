class CreatePlaceAttrs < ActiveRecord::Migration
  def change
    create_table :place_attrs do |t|
      t.integer :place_id
      t.integer :place_attr_type
      t.string :value

      t.timestamps
    end
  end
end
