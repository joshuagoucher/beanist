class Post < ActiveRecord::Base
  attr_accessible :author, :body, :title

  def to_param
  	"#{id} #{title}".parameterize
  end
end
