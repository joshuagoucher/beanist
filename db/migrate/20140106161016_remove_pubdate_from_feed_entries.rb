class RemovePubdateFromFeedEntries < ActiveRecord::Migration
  def change
  	remove_column :feed_entries, :pubdate
  end
end
