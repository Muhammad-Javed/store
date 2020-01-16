class ProductsController < ApplicationController
  before_action :find_catagory, only: %i[index create update destroy]
  before_action :find_product, only: [:edit, :update,  :destroy]

  def index
    @prodcut=Product.all
  end

  def create
    @product=@catagory.products.create(product_params)
    if @product.save
      redirect_to @catagory
    end
  end

  def update

    if @product.update_attributes(product_params)
      redirect_to @catagory
    else
      render 'edit'
    end

  end

  def edit
  end

  def destroy
    @product.destroy
    redirect_to @catagory
  end

  private
    def find_catagory
      @catagory = Catagory.find(params[:catagory_id])
    end

    def find_product
      @product = Product.find(params[:id])
    end

    def product_params
      params.require(:product).permit(:name, :price, :discription)
    end
end
