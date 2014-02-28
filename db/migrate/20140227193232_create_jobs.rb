class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :location
      t.string :job_type
      t.string :company
      t.string :category
      t.text :description

      t.timestamps
    end
  end
end
