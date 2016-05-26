class AddToShortDescriptionToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :shortdescription, :string
  end
end
