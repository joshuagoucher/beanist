class DropFeedEntriesTable < ActiveRecord::Migration
  def up
  	drop_table :feed_entries
  end

  def down
  	create_table :feed_entries do |t|
      t.string :title
      t.string :url

      t.timestamps
  end
  end
end
