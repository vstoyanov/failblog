class CreateCategoriesPublicationsTable < ActiveRecord::Migration
  def self.up
    create_table :categories_publications, :id => false do |t|
      t.references :category
      t.references :publication
    end
    add_index :categories_publications, [:category_id, :publication_id]
    add_index :categories_publications, [:publication_id, :category_id]
  end

  def self.down
    drop_table :restaurants_users
  end
end
