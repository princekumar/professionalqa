class CreateSubscribes < ActiveRecord::Migration
  def change
    create_table :subscribes do |t|
      t.string :subsemail

      t.timestamps null: false
    end
  end
end
