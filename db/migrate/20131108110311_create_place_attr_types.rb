class CreatePlaceAttrTypes < ActiveRecord::Migration
  def change
    create_table :place_attr_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
