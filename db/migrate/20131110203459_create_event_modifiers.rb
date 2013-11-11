class CreateEventModifiers < ActiveRecord::Migration
  def change
    create_table :event_modifiers do |t|
      t.string :description

      t.timestamps
    end
  end
end
