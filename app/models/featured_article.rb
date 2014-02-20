class FeaturedArticle < ActiveRecord::Base
  attr_accessible :editors_comment, :img_url, :summary, 
  				  :title, :url, :pubdate, :source, :tag_list
  acts_as_ordered_taggable

 

  has_reputation :votes, source: :user, aggregated_by: :sum

  validates :img_url, presence: true, length: { maximum: 140 }
  validates :title, presence: true, length: { maximum: 140 }
  validates :url, presence: true, length: { maximum: 140 }
  validates :source, presence: true, length: { maximum: 140 }
  validates :summary, presence: true



  def self.last_week
  	where(:created_at => 1.week.ago..Time.now)
  end

  def self.today
  	where(:created_at => 28.hours.ago..Time.now)
  end


end
