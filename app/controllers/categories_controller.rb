class CategoriesController < ApplicationController
  def index
    @Cat = Category.find :all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @Cat }
    end
  end

  def show
    @Cat = Category.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @Cat }
    end
  end

  def new
    @Cat = Category.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @Cat }
    end
  end

  def edit
    @Cat = Category.find(params[:id])
  end

  def create
    @Cat = Category.new(params[:Cat])

    respond_to do |format|
      if @Cat.save
        flash[:notice] = 'Category was successfully created.'
        format.html { redirect_to(@Cat) }
        format.xml  { render :xml => @Cat, :status => :created, :location => @Cat }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @Cat.errors, :status => :unprocessable_entity }
      end
    end
  end

  def update
    @Cat = Category.find(params[:id])

    respond_to do |format|
      if @Cat.update_attributes(params[:Cat])
        flash[:notice] = 'Category was successfully updated.'
        format.html { redirect_to(@Cat) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @Cat.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    @Cat = Category.find(params[:id])
    @Cat.destroy

    respond_to do |format|
      format.html { redirect_to(admin_Cat_url) }
      format.xml  { head :ok }
    end
  end
end
