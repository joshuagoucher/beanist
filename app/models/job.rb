class Job < ActiveRecord::Base
  attr_accessible :category, :company, :description, :job_type, :location, :title, :tag_list, :verified

  acts_as_ordered_taggable

  def to_param
    "#{id} #{title} #{company}".parameterize
  end

  def self.verified_jobs
  	where(verified: true)
  end

  def self.unverified_jobs
    where(verified: false)
  end

  def self.recent_jobs
  	where(created_at: 1.week.ago..Time.now)
  end

  def self.older_jobs
  	where(created_at: 1.month.ago..1.week.ago)
  end
end
