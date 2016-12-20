class StaticPagesController < ApplicationController
  def home
    if logged_in?
      @micropost = current_user.microposts.build
      search_word = params[:search].to_s
      @feed_items = current_user.feed_items.includes(:user).search(search_word).order(created_at: :desc).page(params[:page]).per(1)
    end
  end
end
