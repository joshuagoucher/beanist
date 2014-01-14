class AddPubdateToFeaturedArticles < ActiveRecord::Migration
  def change
    add_column :featured_articles, :pubdate, :string
  end
end
