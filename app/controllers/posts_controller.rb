class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user! 
  def index
    @posts = current_user.posts.order(created_at: :desc)
  end
  def show
  end

  def new
    @post = current_user.posts.build
  end
  def edit
  end

  def create
    @post = current_user.posts.build(post_params)

    if @post.save
      redirect_to posts_path, notice: '作成しました'
    else
      render :new
    end
  end

  def update
    if @post.update(post_params)
      redirect_to @post, notice: '更新しました'
    else
      render :edit
    end
  end

  def destroy
    @post.destroy
      redirect_to posts_url, notice: '削除しました'
  end

  private
    def set_post
      @post = Post.find(params[:id])
    end
    def post_params
      params.require(:post).permit(:content, :user_id)
    end
end
