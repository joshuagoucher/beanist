class FeedEntriesController < ApplicationController
  before_filter :signed_in_user, only: [:index, :new, :destroy, :vote]
  before_filter :admin_user, only: [:index, :new, :create, :destroy]


  def index
  	@feed =  FeedEntry.last(20)
  end

  def show
  	@feed_entry = FeedEntry.find(params[:id])
  	redirect_to @feed_entry.url 
  end

  def destroy
  	FeedEntry.find(params[:id]).destroy
  	redirect_to root_url
  end

  def vote
  	value = params[:type] == "up" ? 1 : -1
  	@feed = FeedEntry.find(params[:id])
  	@feed.add_or_update_evaluation(:votes, value, current_user)
  	redirect_to :back
  end

  private

  	def signed_in_user
      redirect_to root_url, notice:"please signed_in" unless signed_in?
    end

    def admin_user 
      redirect_to root_url unless current_user.admin?
    end


end
