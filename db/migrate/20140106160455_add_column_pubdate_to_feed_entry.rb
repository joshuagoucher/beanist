class AddColumnPubdateToFeedEntry < ActiveRecord::Migration
  def change
  	add_column :feed_entries, :pubdate, :string
  end
end
