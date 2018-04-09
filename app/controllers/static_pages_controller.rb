class StaticPagesController < ApplicationController

  def index
  end

  def landing_page
  	@posts = Post.limit(2)
  end

end


