class AddHideToFeedEntries < ActiveRecord::Migration
  def change
    add_column :feed_entries, :hide, :boolean, default: false
  end
end
