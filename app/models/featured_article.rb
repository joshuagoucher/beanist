class FeaturedArticle < ActiveRecord::Base
  attr_accessible :editors_comment, :img_url, :summary, 
  				  :title, :url, :pubdate, :source

  has_reputation :votes, source: :user, aggregated_by: :sum


  def self.last_week
  	where(:created_at => 1.week.ago..Time.now)
  end

end
