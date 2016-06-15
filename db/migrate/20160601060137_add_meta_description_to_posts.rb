class AddMetaDescriptionToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :metadescription, :string
  end
end
