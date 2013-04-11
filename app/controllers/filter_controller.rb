class FilterController < ApplicationController
  def choosefilter
      @filter = params[:string]
      @tweets = Twitter.search(@filter, lang: "en", count:30).results
    end
end