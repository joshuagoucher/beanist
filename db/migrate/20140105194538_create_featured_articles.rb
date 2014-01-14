class CreateFeaturedArticles < ActiveRecord::Migration
  def change
    create_table :featured_articles do |t|
      t.string :img_url
      t.string :title
      t.text :summary
      t.string :editors_comment
      t.string :url

      t.timestamps
    end
  end
end
