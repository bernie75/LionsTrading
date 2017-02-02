class ProductsController < ApplicationController
skip_before_action :authenticate_user!
before_action :set_product, only: [:show, :edit, :update, :destroy]

def index
  @products = Product.all
end

def show
end
def new
  @product = Product.new
end

def create
    @product = Products.new(product_params)
    respond_to do |format|
    if @product.save
        format.html { redirect_to @product, notice: 'Book was successfully created.' }
        format.json { render :show, status: :created, location: @product }
        else
        format.html { render :new }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

 def update
    if @product.update(product_params)
      redirect_to @product
    else
      render :edit
    end
  end

  def edit

  end

  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url, notice: 'product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:name, :price, :sku )
    end
end
