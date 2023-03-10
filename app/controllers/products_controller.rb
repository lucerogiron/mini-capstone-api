class ProductsController < ApplicationController
  before_action :authenticate_admin

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
      supplier_id: params[:supplier_id],
      name: params[:name],
      price: params[:price],
      description: params[:description],
      quantity: params[:quantity],
    )
    if @product.valid?
      Image.create(product_id: @product_id, url: params[:image_url])
      render :show
    else
      render json: { errors: @product.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    @product = Product.find_by(id: params[:id])
    @product.update(
      name: params[:name] || @product.name,
      price: params[:price] || @product.price,
      description: params[:description] || @product.description,
    )
    if @product.valid?
      render :show
    else
      render json: { errors: @product.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @product = Product.find_by(id: params[:id])
    @product.delete
    render json: { message: "This is not the product you are looking for" }
  end
end
