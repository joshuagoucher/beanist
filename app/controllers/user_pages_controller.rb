class UserPagesController < ApplicationController
  def index
  	@feed = FeedEntry.last(12).reverse
  	@featured = FeaturedArticle.last(9).reverse
    @favourites = FeaturedArticle.last_week.find_with_reputation(:votes, :all, order: "votes desc").take(6)
  end

  

  def contact
  end
end
