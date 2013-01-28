class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :publication
      t.string :text
      t.string :name
      t.string :email

      t.timestamps
    end
    add_index :comments, :publication_id
  end
end
