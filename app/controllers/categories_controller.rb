class CategoriesController < ApplicationController
  layout 'default'
  def index
    @Cat = Category.find :all
  end

  def show
    @Cat = Category.find(params[:id])
    @posts = Post.find_all_by_category_id(@Cat.id)
  end

  def new
    @Cat = Category.new
  end

  def edit
    @Cat = Category.find(params[:id])
  end

  def create
    @Cat = Category.new(params[:category])
    if @Cat.save
      redirect_to categories_path
    else
      render :action => "new"
    end
  end

  def update
    @Cat = Category.find(params[:id])

    if @Cat.update_attributes(params[:category])
      redirect_to categories_path
    else
      render :action => "edit"  
    end
  end

  def destroy
    @Cat = Category.find(params[:id])
    @Cat.destroy
    redirect_to(admin_Cat_url) 
     
  end
  
end
