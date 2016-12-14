class AddPostIdToSubscribers < ActiveRecord::Migration
  def change
    add_column :subscribers, :post_id, :integer
    add_index :subscribers, :post_id
  end
end
