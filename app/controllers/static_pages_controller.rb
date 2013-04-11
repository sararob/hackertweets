class StaticPagesController < ApplicationController
  def home
  end
  
  def about
  end
  
  def tweets
    if params[:tag]
      @tweets = Twitter.search("#"+ params[:tag], lang: "en", count:30).results
    else 
      @tweets = Twitter.search("#ruby OR #rails OR #javascript OR #python OR #html OR #css OR #php OR #sql", lang: "en", count:30).results
    end

    if request.xhr?
      render partial: 'static_pages/git tweets'
    end
  end
  
  def stream
    TweetStream::Client.new.track('javascript') do |status|
      puts "#{status.text}"
    end
  end

end
