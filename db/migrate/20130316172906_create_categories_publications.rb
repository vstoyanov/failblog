class CreateCategoriesPublications < ActiveRecord::Migration
  def up
    create_table :categories_publications, :id => false, :force => true do |t|
      t.belongs_to :category
      t.belongs_to :publication
    end
  end

  def down
    drop_table :categories_publications
  end
end
