class AddTweetDetailsToTweets < ActiveRecord::Migration
  def change
    add_column :tweets, :tweet_office, :integer
    add_column :tweets, :tweet_position, :string
    add_column :tweets, :tweet_name, :string
  end
end
