class CreatePlaceAttrTypes < ActiveRecord::Migration
  def change
    create_table :place_attr_types do |t|
      t.string :type

      t.timestamps
    end
  end
end
