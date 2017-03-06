class PostsController < ApplicationController
  before_action :find_post, only: [:edit, :update, :show, :delete]

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
    @categories = Category.all
  end

  def create
    @post = Post.new(post_params)
    # @categories = Category.all
    if @post.save
      redirect_to post_path(@post)
    else
      @error = @post.errors.full_messages
      render :new
    end
  end

  def edit

  end

  def update
    if @post.update_attributes(post_params)
      flash[:notice] = "Successfully updated post!"
      redirect_to post_path(@posts)
    else
      flash[:alert] = "Error updating post!"
    end
  end

  def show
  end

  def destroy
    if @post.destroy
      flash[:notice] = "Successfully deleted post"
      redirect_to post_path
    else
      flash[:alert] = "Error updating post!"
    end
  end

private

  def post_params
    params.require(:post).permit(:title, :body, :category_id, :author_id)
  end

  def find_post
    @post = Post.find_by(id: params[:id])
  end


end
