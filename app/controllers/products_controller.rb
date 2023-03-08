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
      price: params[:price],
      description: params[:description],
    )
    @product.save
    # if @product.valid?
    #   render :show
    # else
    #   errors: @product.errors.full_messages
    #   render :json {message: "uhhhhh I think you did something wrong"}
    # end

  end

  def update
    @product = Product.find_by(id: params[:id])
    @product.update(
      name: params[:name] || @product.name,
      price: params[:price] || @product.price,
      description: params[:description] || @product.description,
    )
    # if @product.valid?
    #   render :show
    # else
    #   errors: @product.errors.full_messages
    #   render :json {message: "uhhhhh I think you did something wrong"}
    # end
  end

  def destroy
    @product = Product.find_by(id: params[:id])
    @product.delete
    render json: { message: "This is not the product you are looking for" }
  end
end
