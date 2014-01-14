class AddCreatedDateToFeaturedArticles < ActiveRecord::Migration
  def change
    add_column :featured_articles, :created_date, :datetime
  end
end
