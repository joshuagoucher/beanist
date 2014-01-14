class AddColumnPubdateToFeedEntries < ActiveRecord::Migration
  def change
    add_column :feed_entries, :pubdate, :datetime
  end
end
