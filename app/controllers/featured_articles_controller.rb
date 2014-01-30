class FeaturedArticlesController < ApplicationController
 # before_filter :signed_in_user
  before_filter :admin_user, only: [:new, :create, :destroy]


  def show
  	@article = FeaturedArticle.find(params[:id])
    redirect_to @article.url
  end

  def new
  	@article = FeaturedArticle.new
  end

  def create 
  	@article = FeaturedArticle.new(params[:featured_article])
  	if @article.save
  		redirect_to root_url
  	else
  		render 'new'
  	end
  end

  def destroy 
  	FeaturedArticle.find(params[:id]).destroy
  	redirect_to root_url
  end

  def vote  
    value = params[:type] == "up" ? 1 : -1
    @feature = FeaturedArticle.find(params[:id])
    @feature.add_or_update_evaluation(:votes, value, current_user)
    respond_to do |format| 
      format.html { redirect_to :back }
      format.js
    end
  end

  private

   def signed_in_user
      unless signed_in?
        redirect_to root_url
        flash[:warning] = "Sign in or Register to Vote!"
      end
    
    end

    def admin_user 
      redirect_to root_url unless current_user.admin?
    end

end
