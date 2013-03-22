class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.text :screen_name
      t.text :text
      t.text :profile_image_url
      t.date :tweet_date
      t.text :tweet_id

      t.timestamps
    end
  end
end
