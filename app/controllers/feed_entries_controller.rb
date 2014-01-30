class FeedEntriesController < ApplicationController
  before_filter :signed_in_user, except: :show
  before_filter :admin_user, only: [:destroy, :update_feed, :hide]
  
  def show
  	@feed_entry = FeedEntry.find(params[:id])
  	redirect_to @feed_entry.url 
  end

  def update_feed
    FeedEntry.update_from_feed
    redirect_to root_url
  end

  def destroy
  	FeedEntry.find(params[:id]).destroy
  	redirect_to root_url
  end


  def vote
  	value = params[:type] == "up" ? 1 : -1
  	@feed = FeedEntry.find(params[:id])
  	@feed.add_or_update_evaluation(:votes, value, current_user)
  	respond_to do |format| 
      format.html { redirect_to :back }
      format.js
    end
  end

  def hide
    item = FeedEntry.find(params[:id])
    item.toggle!(:hide)
    redirect_to root_url
  end


  private

  	def signed_in_user
      unless signed_in?
        redirect_to root_url
      end
    end

    def admin_user 
      redirect_to root_url unless current_user.admin?
    end


end
