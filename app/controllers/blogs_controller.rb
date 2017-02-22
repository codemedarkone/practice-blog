class BlogsController < ApplicationController


  def index
    @blogs = Blog.all
  end

# GET blogs/show
  def show

  end

 # GET blogs/new
  def new
    @blog = Blog.new
  end

# GET blogs/edit
  def edit
    @blog = Blog.find(params[:id])
  end

  # GET blogs
  def create
    @blog = Blog.new(params.require(:blog).permit(:title, :body))

    respond_to do |format|
      if @blog.save
        format.html { redirect_to @blog, notice: "your post is now live"}
      else
        format.html { render :new }
      end
    end
  end

end
