class CreateComment < ActiveRecord::Migration
  def up
    create_table :comments, :force => true do |t|
      t.references :publication
      t.string   :text
      t.string   :name
      t.string   :email
      t.timestamps
    end
  end

  def down
    drop_table :comments
  end
end
