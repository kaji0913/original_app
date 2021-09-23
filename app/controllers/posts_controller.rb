class PostsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show, :about]
  before_action :set_post, only:[:show, :edit, :update, :destroy]


  def index
    @posts = Post.includes(:user)
    @all_ranks = Post.find(Like.group(:post_id).order('count(post_id) DESC').limit(4).pluck(:post_id))
  end

  def about
  end

  def new
    @post = Post.new
  end
  
  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to root_path      
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @post.update(post_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    @post.destroy
    redirect_to root_path
  end

  private

  def post_params
    params.require(:post).permit(:title, :writer, :genre_id, :degree_of_difficult_id, :to_whom, :overview, :image).merge(user_id: current_user.id)
  end

  def set_post
    @post = Post.find(params[:id])
  end
end
