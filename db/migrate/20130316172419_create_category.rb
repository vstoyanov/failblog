class CreateCategory < ActiveRecord::Migration
  def up
    create_table :categories, :force => true do |t|
      t.string   :name,  :null => false
      t.timestamps
    end
  end

  def down
    drop_table :categories
  end
end
