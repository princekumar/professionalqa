class AddSlugToPosts < ActiveRecord::Migration
  def change
    add_column :post, :slug, :string
    add_index :posts, :slug
  end
end
