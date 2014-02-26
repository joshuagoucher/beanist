class UserPagesController < ApplicationController
  def index
  	@featured = FeaturedArticle.last(12).reverse
  	@daily_favs = FeaturedArticle.today.find_with_reputation(:votes, :all, order: "votes desc").take(5)
    @week_favs = FeaturedArticle.last_week.find_with_reputation(:votes, :all, order: "votes desc").take(10)
    @recent_users = User.last_week
  end

  

  def contact
  end
end
