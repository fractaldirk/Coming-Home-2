class HomeController < ApplicationController
  before_filter :authenticate_user!

  def index
    @tweets = Tweet.find(:all, :order => "created_at DESC")
    @positions = Position.all
    @prtalks = Position.find(:all, :order => "next_performance_talk ASC").last(7)
  end
  def performance

  end
  def analytics

  end
end
