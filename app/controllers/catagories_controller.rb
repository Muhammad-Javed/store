class CatagoriesController < ApplicationController
  # before_action :catagory_new, only:[ :new]
  before_action :find_catagory, only: %i[edit update destroy show]
  before_action :authenticate_user!, except: [:index, :show]
def index
  @catagories = Catagory.all
end

def new
  @catagory = current_user.catagories.build
end

def show
end

def create
  @catagory = current_user.catagories.build(catagory_params)
  if @catagory.save
    redirect_to root_path
  else
    render 'new'
  end
end

def edit
end

def update
  if @catagory.update(catagory_params)
    redirect_to root_path
  else
    render 'edit'
  end
end

def destroy
  @catagory.destroy
  redirect_to root_path
end

private
  def catagory_params
    params.require(:catagory).permit(:name)
  end

  def catagory_new
    @catagory = Catagory.new
  end

  def find_catagory
    @catagory = Catagory.find(params[:id])
  end
end
