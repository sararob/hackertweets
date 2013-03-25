module ApplicationHelper
  def full_title(page_title)
    base_title = "HackerTweets"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end
  
  def h3(page_h3)
    if page_h3.empty?
      full_h3 = "Showing all HackerTweets"
    else
      full_h3 = "Tweets About" + " #{page_h3}"
    end
  end
end
