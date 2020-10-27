class PostsController < ApplicationController
  def index
    @posts = Post.all.order(id: "DESC")
  end

  def create
    Post.create(content: params[:content])
    redirecu_to action: :index
  end
end
