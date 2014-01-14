class AddSourceToFeaturedArticles < ActiveRecord::Migration
  def change
    add_column :featured_articles, :source, :string
  end
end
