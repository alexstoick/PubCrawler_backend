class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :event_type_id
      t.integer :event_modifier_id
      t.integer :event_modifier_value
      t.integer :place_id

      t.timestamps
    end
  end
end
