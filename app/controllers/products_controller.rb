class ProductsController < ApplicationController
  def index
    @products = Product.all
    render :index
  end

  def show
    @product = Product.find_by(id: params[:id])
    render :show
  end

  def create
    @product = Product.create(
      name: params[:name],
      price: params[:name],
      image_url: params[:name],
      description: params[:name],
    )
    @product.save
    render :show
  end
end
