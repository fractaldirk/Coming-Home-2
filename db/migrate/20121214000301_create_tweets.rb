class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.integer :position_id
      t.string :tweeter
      t.text :body

      t.timestamps
    end
  end
end
