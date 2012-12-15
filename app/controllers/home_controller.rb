class HomeController < ApplicationController
  before_filter :authenticate_user!

  def index
    @tweets = Tweet.find(:all, :order => "created_at DESC")
    @positions = Position.all
  end
  def salary

  end
  def hr

  end
  def dictionary

  end
end
