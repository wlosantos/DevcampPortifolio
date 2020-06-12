class BlogsController < ApplicationController

  before_action :set_find, only: [:show, :edit, :update, :destroy]

  def index
    @blogs = Blog.orderDescendent
  end

  def show
  end

  def new
    @blog = Blog.new
  end

  def create
    @blog = Blog.new(blog_params)
    if @blog.save
      redirect_to @blog, notice: 'Created with success!!!'
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @blog.update(blog_params)
      redirect_to @blog, notice: 'Update with success'
    else
      render 'edit'
    end
  end

  def destroy
    @blog.destroy
    redirect_to root_url
  end

  private
    def set_find
      @blog = Blog.find(params[:id])
    end

    def blog_params
      params.require(:blog).permit(:title, :body)
    end
end
