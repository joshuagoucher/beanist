class FeedEntry < ActiveRecord::Base
  attr_accessible :title, :url, :pubdate, :source, :hide

   has_reputation :votes, source: :user, aggregated_by: :sum

   

  def self.update_from_feed
  		feed_url = "http://pipes.yahoo.com/pipes/pipe.run?_id=e8dd4d7d8b5d4a4788d1191f82e93d06&_render=rss"
		feed = Feedzirra::Feed.fetch_and_parse(feed_url)
		add_entries(feed.entries)
  end


	private

	def self.add_entries(entries)
		entries.reverse.each do |entry|
			unless exists? title: entry.title
			
			  address = entry.url
			  	
				if address.split("www.")[1].nil?
					address = address.split("/")[2]
				else
					address = address.split("www.")[1]
					address = address.split("/")[0]
				end


			  create!(
				title:         entry.title,
				url:           entry.url,
				pubdate:       entry.published,
				source:        address
			   )
			end
		end
	end
end
