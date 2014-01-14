class UserPagesController < ApplicationController
  def index
  	@feed = FeedEntry.last(12).reverse
  	@feature = FeaturedArticle.todays_articles.find_with_reputation(:votes, :all, order: "votes desc")
    @favourites = FeaturedArticle.last_week.find_with_reputation(:votes, :all, order: "votes desc")
  end

  

  def contact
  end
end
