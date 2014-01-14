class RemoveCreatedDateEdDateFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :created_date
  end
end
