class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :shortdescription
      t.string :keywords
      t.string :metadescription
      t.text :body
      t.date :date

      t.timestamps null: false
    end
  end
end
