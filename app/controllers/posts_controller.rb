class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  def index
    @posts = Post.all
  end

  def show
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    respond_to do |format|
      if @post.save
        format.html {redirect_to @post, :notice => "post create success"}
      else
        format.html {render :new}
      end
    end
  end

  def edit
  end

  def update
    @post.attributes = post_params
    respond_to do |format|
      if @post.save
        format.html {redirect_to @post, :notice => "post update success"}
      else
        format.html {render :edit}
      end
    end
  end

  def destroy
    @post.destroy
    respond_to do |format|
      format.html {redirect_to posts_path, :notice => "post delete success"}
    end
  end

  private
  def post_params
    params.require(:post).permit(:title, :body)
  end
  def set_post
    @post = Post.find(params[:id])
  end
end
