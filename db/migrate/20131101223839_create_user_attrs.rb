class CreateUserAttrs < ActiveRecord::Migration
  def change
    create_table :user_attrs do |t|
      t.string :value
      t.integer :user_id
      t.integer :user_attr_type_id

      t.timestamps
    end
  end
end
