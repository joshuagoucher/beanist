class AddExternalToFeaturedArticles < ActiveRecord::Migration
  def change
    add_column :featured_articles, :external, :boolean, default: true
  end
end
