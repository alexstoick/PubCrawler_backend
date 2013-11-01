class CreateUserAttrs < ActiveRecord::Migration
  def change
    create_table :user_attrs do |t|
      t.string :id

      t.timestamps
    end
  end
end
