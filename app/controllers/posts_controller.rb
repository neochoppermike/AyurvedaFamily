class PostsController < ApplicationController
  before_action :set_post, only: [:show]

  # GET /posts
  # GET /posts.json
  def index
    if params[:q]
      search_term = params[:q]
      @posts = Post.search(search_term)    
    else
      @posts = Post.all
    end
    @posts = @posts.paginate(:page => params[:page], per_page: 4)
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end
end
