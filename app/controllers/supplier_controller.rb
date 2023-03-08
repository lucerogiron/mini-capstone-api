class SupplierController < ApplicationController
  def index
    @suppliers = Supplier.all
    render :index
  end
end
