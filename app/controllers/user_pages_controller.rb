class UserPagesController < ApplicationController
  def index
  	@feed = FeedEntry.last(9).reverse
  	@featured = FeaturedArticle.todays_articles.find_with_reputation(:votes, :all, order: "votes desc").take(6)
    @favourites = FeaturedArticle.last_week.find_with_reputation(:votes, :all, order: "votes desc").take(6)
  end

  

  def contact
  end
end
