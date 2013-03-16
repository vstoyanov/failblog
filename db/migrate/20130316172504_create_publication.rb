class CreatePublication < ActiveRecord::Migration
  def up
    create_table :publications , :force => true do |t|
      t.string   :title, :null => false
      t.string   :content,  :null => false
      t.boolean :list_page
      t.boolean :comments_allowed
      t.boolean :live
      t.belongs_to :parent
      t.timestamps
    end
  end

  def down
    drop_table :publications
  end
end
