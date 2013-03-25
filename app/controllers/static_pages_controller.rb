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
  end

end
