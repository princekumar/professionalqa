class CreateSubscribers < ActiveRecord::Migration
  def change
  	create_table :subscribers do |t|
      t.string :subemail

      t.timestamps null: false
    end
  end
end
