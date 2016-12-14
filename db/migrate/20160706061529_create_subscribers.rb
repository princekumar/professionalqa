class CreateSubscribers < ActiveRecord::Migration
  def change
  	create_table :subscribers do |t|
      t.string :subemail
      t.references :post

      t.timestamps null: false
    end
  end
end
