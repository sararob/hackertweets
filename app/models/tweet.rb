class Tweet < ActiveRecord::Base
  attr_accessible :profile_image_url, :screen_name, :text, :tweet_date, :tweet_id
  
  def rubytweets
    Twitter.search("#ruby -rt", lang: "en").results.each do |tweet|
      unless exists?(tweet_id: tweet.id)
        create!(
          tweet_id: tweet.id,
          text: tweet.text,
          screen_name: tweet.user.screen_name,
          profile_image_url: tweet.profile_image_url,
          tweet_date: tweet.created_at,
        )
      end
    end
  end
end