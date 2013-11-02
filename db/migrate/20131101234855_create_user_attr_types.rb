class CreateUserAttrTypes < ActiveRecord::Migration
  def change
    create_table :user_attr_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
