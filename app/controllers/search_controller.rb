class SearchController < ApplicationController
  require 'will_paginate/array'

  def index
    search_term = params[:q]
    @search_results = Post.search(search_term) + Video.search(search_term)
    @search_results = @search_results.paginate(:page => params[:page], per_page: 4)
  end

end
